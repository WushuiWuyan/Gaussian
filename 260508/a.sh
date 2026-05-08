#!/bin/bash

for ss in `ls *.fchk`
do

echo $ss

a=`basename "$ss" .fchk`

Multiwfn $ss <<EOF  > $a.txt
9
1
EOF

done

grep '1(C )    4(O )' *.txt | awk '{print $8}' > Mayerbond.C1-O4.txt
grep '1(C )    5(Cl)' *.txt | awk '{print $7}' > Mayerbond.C1-Cl5.txt
grep '4(O )   10(O )' *.txt | awk '{print $8}' > Mayerbond.O4-O10.txt
grep '1(C )    6(C )' *.txt | awk '{print $8}' > Mayerbond.C1-C6.txt


