#!/bin/bash

FILE=` ls *.gjf`

for ss in $FILE
do

echo $ss

a=`basename "$ss" .gjf`

g16 < $ss | tee ${a}.log

formchk $a.chk

done


