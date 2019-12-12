#!/bin/bash


#loop for

for x in jeden dwa trzy
do
    echo ${x}
done

for plik in *.sh
do
    echo ${plik}
done

#i++ - i=i+1 inkrementacja
#i-- - i=i-1 dekrementacja
# i++ - i=i+1
# i=1 1<=3 -> true
# i=2 2<=3 -> true i=2+1
# i=3 3<=3 -> true i=3+1
# i=4 4<=3 -> false koniec
for ((i=1; i<=3; i++))
do
    echo ${i}
done


#loop while
j=1

while [ ${j} -le 100 ]; do
    echo -e "\0227"
    j$[i+1]
done


