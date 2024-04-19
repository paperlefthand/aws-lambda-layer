#!/bin/bash -eu

SRC=/python
DIST=/dist

python3 -m pip -U pip
python3 -m pip install -t ${SRC} -r ${DIST}/requirements.txt
rm -f ${DIST}/layer.zip
zip -q -r ${DIST}/layer.zip ${SRC}
