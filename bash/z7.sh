#!/bin/bash

#funkcje, podprogramy

#procedura
function Moja() {
    echo "Procedura"
}

#wywołanie procedury

Moja
#Zad1 wywołaj procedurę 10 razy metodą iteracyjną (while)

function moja_10 () {

    echo "mordo"

}
i=1
while [ ${i} -le 10 ]; do
    moja_10
    i=$[i+1]
done

#wyrażenia arytmertyczne
echo $((2+2))

echo $[2+2]

x=5
y=2

let suma=x+y
echo ${suma}

#operatory aytmetyczne
# + : dodawanie
# - : odejmowanie
# * : mnożenie
# / : dzielenie
# % : reszta z dzielenia

echo $[x%y]














































