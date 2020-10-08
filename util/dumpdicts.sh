#!/bin/bash

# We have some reqs already started as spreadsheets.  This temporary
# script does an ad-hoc, one-shot conversion to Jsonnet.  The results
# may be editted but beware if you rerun this script you may overwrite
# those changes.  Again: just use this once or know what you are doing.

usage () {
    cat <<EOF
dumpdicts.sh data/*.xlsx
EOF
    exit 1
}

if ! type moo > /dev/null 2>&1 ; then
    echo "$0 needs the 'moo' command"
    usage
fi

mydir=$(dirname $(realpath $BASH_SOURCE))

do_one () {
    code="$1" ; shift
    xls="$1" ; shift
    dir="$(dirname $(realpath $xls))"
    out="${dir}/${code}.jsonnet"
    set -x
    moo -A code="$code" \
        -A specs="$xls" \
        render -o $out \
        $mydir/code-specs-model.jsonnet \
        $mydir/templates/dumpdicts.jsonnet.j2 || exit 1
    set +x
}

do_one nd-cap       data/nd-capabilities-doorsinput.xlsx
do_one nd-meas      data/nd-meas-doorsinput.xlsx
do_one nd-overarch  data/nd-overarch-doorsinput.xlsx
