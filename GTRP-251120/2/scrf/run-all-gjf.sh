#!/bin/bash

FILE=` ls .. | grep '\.gjf' `

for ss in $FILE
do

echo $ss

a=`basename "$ss" .gjf`
cp ../${a}.chk .
head -n 4 ../$ss > $ss

sed -i '/#/d' $ss 
sed -i '$a # scrf=(solvent=n,n-dimethylformamide) def2tzvp m062x geom=allcheck' $ss

g16 < $ss > ${a}.log

done


