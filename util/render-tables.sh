#!/bin/bash

usage () {
    cat <<EOF
Render req/spec tables.

usage: render-tables.sh
EOF
    exit 1
}

mydir="$(dirname $(realpath $BASH_SOURCE))"
srcdir="$(dirname $mydir)"

for code in nd-cap nd-meas nd-overarch
do
    set -x
    moo -A code="$code" -A specs="${srcdir}/data/${code}.jsonnet" \
        render -o "${srcdir}/generated/spec-longtable-${code}.tex" \
               "${mydir}/code-specs-model.jsonnet" \
               "${mydir}/templates/spec-longtable.tex.j2" || exit 1
    set +x
done
