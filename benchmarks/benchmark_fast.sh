#!/bin/zsh

ks=( 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )

datafile=BigTestData

for i in ${ks}
do
  echo "Currently running K=${i}."
  /usr/bin/time -f %E python2 ~/Software/fastStructure/structure.py -K $i --input=../TestData/${datafile} --output=../TestData/${datafile}_out --format=str
done
