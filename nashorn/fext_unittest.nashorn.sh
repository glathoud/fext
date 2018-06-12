#!/usr/bin/env bash

DIR=$(realpath $(dirname $0))
NASHORN_SUBDIR=$(basename $DIR)

cd $DIR/..
jjs -scripting <<< "load('fext.js');load('fext_unittest.js'); load('${NASHORN_SUBDIR}/map.js'); exit( true === fext_unittest().global  ?  0  :  1 );"
A=$?
echo $A
if [ $A -eq 0 ]
then
    echo "Success"
else
    echo "Failure" >&2
    exit 1
fi
