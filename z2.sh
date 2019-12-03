
#!/bin/bash

#cytowanie "" double quote

echo -e "Polecenie \t ls\n"

#użycie `` 

echo "wynik ls: `ls`"

#apostrof '' single quote 

echo  'Polecenie \t ls \n'

#zmienne
x=10

echo "zmienna x: ${x}"

echo 'zmienna x: ${x}'

#pwd

WD=` pwd`

echo ${WD}

#zmienna tablica 

tab=(1 3 5)

echo ${tab[0]}

echo ${tab[1]}

echo ${tab[2]}

echo ${tab[*]}

#ilość elementów tablicy 
echo "ilość elementów:"${#tab[@]}

#modywfikacja wartości zmiennej
tab[2]=10

echo @{#tab[@]}















