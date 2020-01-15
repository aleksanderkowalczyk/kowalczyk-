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
    if "${sure}" == "y"]
    for user in "${user_list[@]}"
	    echo "Add user: ${user} [OK]"
	    sudo useradd ${user} -s /sbin/nologin -g "users"
	done
    fi
}


function delUsers() {
    echo "DelUsers ..."
    echo -n "Are you sure? [y/n]"
    read sure
    if [ ${sure} == "y"]; then
	for user in  "${user_list[@]}"
	do
	    echo  "Remove user ${user} [OK]"
	    sudo userdel ${user}
	done
    fi

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
























