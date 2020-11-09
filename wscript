#!/usr/bin/env waf
'''
Usage:

Configure the project giving it an optional "installation" directory:

./waf configure --prefix=/path/to/install

Build the main products (volume PDFs).  You can find them under
build/.

./waf

Install the main products to the prefix, optionall may include installing chapter PDFs.

./waf install [--chapters]

Generate volume tar files suitable for submission to the arXiv.  You
can also "install" them.

./waf --arxiv

Remove build products from build/ but keep configuration.

./waf clean

Also remove configuration.  You will need to start over to do more.

./waf distclean
'''

import os
import waflib.Tools.tex

APPNAME = 'dune-us-nd-pdr'
VERSION = '0.0'
top = '.'

# "top-level" reqs/spec names
TOP_LEVEL_SPECS = ('SP-FD', 'DP-FD')


# Add extensions so matches get into the manifest for arxiv tarball.
waflib.Tools.tex.exts_deps_tex.extend(
    ['.jpg', '.jpeg', '.PDF', '.JPG', '.PNG'])

# Return the cover PDF file name or None.
#
# This function bakes in whatever naming convention used.  
def volume_cover(volname):
    if volname in "vol-exec vol-physics vol-tc vol-sp vol-dp".split():
        return "graphics/cover-%s.pdf" % volname
    return None



def options(opt):
    opt.load('tex')
    opt.add_option('--debug', default=False, action='store_true',
                   help="run pdfLaTeX so that it goes into interactive mode on error.")
    opt.add_option('--arxiv', default=False, action='store_true',
                   help="make a tarbal for each volume suitable for upload to arXiv")


def configure(cfg):
    cfg.load('tex')
    cfg.find_program('moo', var='MOO', mandatory = False);
    cfg.env.PDFLATEXFLAGS += [ "-file-line-error", "-recorder", ]


def nice_path(node):
    return node.path_from(node.ctx.launch_node())



# it's stuff like this, abyss:
# https://www.phy.bnl.gov/~bviren/pub/topics/waf-latex-arxiv/
# staring back at me.
import tarfile
def tarball(task):
    bld = task.generator.bld
    prefix, extra = task.generator.prefix, task.generator.extra
    globs = task.inputs[0].read() + ' ' + extra
    nodes = bld.path.ant_glob(globs)
    tfname = task.outputs[0].abspath()
    ext = os.path.splitext(tfname)[1][1:]
    with tarfile.open(tfname, 'w:'+ext, ) as tf:
        for node in nodes:
            tar_path = nice_path(node)
            if node.is_bld():
                tar_path = node.bldpath()
            tf.add(nice_path(node), prefix + tar_path)


from waflib.TaskGen import feature, after_method, before_method
@feature('tex')
@after_method('apply_tex')
def create_another_task(self):
    #print ("create another task")
    tex_task = self.tasks[-1]
    doc = tex_task.outputs[0]
    volname = os.path.splitext(str(doc))[0]
    man = volname + '.manifest'
    man_node = self.bld.path.find_or_declare(man)
    fls_node = self.bld.path.find_or_declare(volname + '.fls')
    at = self.create_task('manifest', [fls_node]+tex_task.outputs, man_node)
    #at.outputs.append(man_node)
    # make tex task info available to manifest task
    at.tex_task = tex_task
    # rebuild whenever the tex task is rebuilt
    at.dep_nodes.extend(tex_task.outputs)
    #print("CREATE MANIFEST",tex_task.outputs)
    # There is an, apparently harmless, warning about the .manifest
    # file being created more than once, and by the same task
    # generator.  This suppresses the error message.
    at.no_errcheck_out = True



from waflib.Task import Task
class manifest(Task):
    def run(self):
        fls_node = self.inputs[0]
        man_node = self.outputs[0]
        top_node = man_node.parent.parent
        top_dir = top_node.abspath()

        #print ("create manifest", man_node)

        content = set()
        for line in fls_node.read().split('\n'):
            chunks = line.strip().split()
            if len(chunks) != 2:
                continue
            if chunks[0] != "INPUT":
                continue
            if not chunks[1].startswith(top_dir):
                continue
            relpath = chunks[1][len(top_dir)+1:].strip()
            if relpath:
                content.add(relpath)

        title = volume_cover(os.path.splitext(man_node.name)[0])
        if title:
            content.add(title.strip())

        for ext in 'bbl glo gls'.split():
            want = man_node.name.replace('.manifest','.'+ext).strip()
            content.add('build/%s'%want)
            
        idx = self.tex_task.uid() 
        nodes = self.generator.bld.node_deps[idx]
        for node in nodes:
            content.add(nice_path(node).strip())

        # content.add("tdr-authors.pdf")

        content = list(content)
        content.sort()

        # print("MANIFEST",nodes)
        with open(man_node.abspath(), 'w') as fp:
            for one in content:
                one = one.strip()
                if not one:
                    continue

                n = top_node.make_node(one)
                if not n.exists():
                    print("WARNING: no such file for manifest: %s" % n.abspath())
                fp.write(one.strip() + '\n')


def regenerate(bld):
    '''
    Make tasks to regenerate files from "requirements" spreadsheets.
    '''
    reqsdeps = list()
    if not bld.env['MOO']:
        print("Note: moo not found, no regen will be done")
        return reqsdeps

    # Despite knowing better, we will land generated files in the
    # source directory for committing so that everyone need not have
    # moo installed.
    gen_dir = bld.srcnode.make_node('generated')

    # A single type of rendering so far: "long table"
    model = bld.srcnode.find_resource("util/model.jsonnet")
    tmpl = bld.srcnode.find_resource("util/templates/spec-longtable.tex.j2")
    for ss in bld.srcnode.ant_glob("data/*.xlsx"):
        code = ss.name.replace('.xlsx', '')
        out = gen_dir.make_node('spec-longtable-%s.tex' % code)
        cmd = "${MOO} -A specs=${SRC[0].abspath()} -A code=%s " % code
        cmd += "render -o ${TGT} ${SRC[1].abspath()} ${SRC[2].abspath()}"
        #print(out)
        bld(rule=cmd, source=[ss, model, tmpl], target=[out])
        reqsdeps.append(out)

    #... make tasks to run moo
    return reqsdeps


def build(bld):

    prompt_level = 0
    if bld.options.debug:
        prompt_level = 1

    reqsdeps = regenerate(bld)

    voltexs = ["nd-pdr.tex", "all-generated.tex"]
    maintexs = list()
    for volind, voltex in enumerate(voltexs):
        volnode = bld.path.find_resource(voltex)
        volname = voltex.replace('.tex','')
        voldir = bld.path.find_dir(volname)
        volpdf = bld.path.find_or_declare(volname + '.pdf')
        voltar = bld.path.find_or_declare('%s-%s.tar.gz' % (volname, VERSION))
        volman = bld.path.find_or_declare(volname + '.manifest')
        maintexs.append(volnode)

        # Task to build the volume
        bld(features='tex',
            prompt=prompt_level,
            type='pdflatex',
            source=[volnode],
            target=volpdf.name)
        # for reqnode in reqsdeps:
        #     bld.add_manual_dependency(volnode, reqnode)
        bld.install_files('${PREFIX}', [volpdf])

        if bld.options.arxiv:
            bld(source=[volman, voltex],
                target=[voltar],
                prefix='%s-%s-%s/' % (APPNAME, volname, VERSION),
                extra=voltex + ' utphys.bst dune.cls graphics/dunelogo_colorhoriz.jpg',
                rule=tarball)
            bld.install_files('${PREFIX}', [voltar])
