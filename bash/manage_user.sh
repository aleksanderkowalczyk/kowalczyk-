#!/bin/bash

#zmienna globalna
#ładowanie danych z pliku
function showUser() {
    echo "LoadUsers ..."
    #ładowanie danych z pliku
    user_list=(`cat users.txt`)
    echo "Lista:"
    for(( i=0; i<=${#user_list[@]}; i++ ))
    do
	echo "<>${user_list[i]}"
    done
}

function addUsers() {
    echo "AddUsers ..."
    for user in "${user_list[@]}"
    do
	echo ${user}
    done
}


function delUsers() {
    echo "DelUsers ..."
}


function acceptRemoteLogin() {
    echo "AcceptRemoteLogin ..."
}


function demiedRemoteLogin() {
    echo "DemiedRemoteLogin ..."
}

function help() {
cat << EndOfMessage
    Opis opcji skryptu
    ...................................
    LU - ładowanie użytkowników z pliku
    SU - Listowanie załadowanych użytkowników

EndOfMessage
}
function quit {
    exit 0
}

#menu
select option in SU AU DU ARL DRL HELP quit
do
    case ${option} in
	 "SU") showUsers ;;
	 "AU") addUsers ;;
	 "DU") delUsers ;;
	 "ARL") acceptRemoteLogin ;;
	 "DRL") deniedRemoteLogin ;;
	 "HELP") help ;;
	 "quit")quit ;;
    *)help
    esac
done
























