#!/bin/bash
set -e

URL=$1
MODULE=$(basename ${URL} | sed -r -e s"/(.*)\\.git/\\1/")
REF=$2

git clone ${URL}
(cd ${MODULE}; git checkout ${REF}; puppet module build)
rsync -ar ${MODULE}/pkg/ pkg
rm -rf ${MODULE}
