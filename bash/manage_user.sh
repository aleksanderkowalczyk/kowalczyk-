#!/bin/bash


#zmienna globalna
user_list=(`cat users.txt`)
#ładowanie danych z pliku
function showUsers() {
    echo "LoadUsers ..."
    #ładowanie danych z pliku
    echo "Lista:"
    for(( i=0; i<=${#user_list[@]}; i++ ))
    do
	echo "	${user_list[i]}"
    done
}

function addUsers() {
    echo "AddUsers ..."
    echo -n "Are you sure [y/n] "
    read sure
    if [ "${sure}" == "y" ]; then
	for user in "${user_list[@]}"
	do
	    echo "Add user: ${user} [OK]"
	    sudo useradd ${user} -s /sbin/nologin -g "users"
	done
    fi
}


function delUsers() {
    echo "DelUsers ..."
    echo -n "Are you sure? [y/n]"
    read sure
    if [ ${sure} == "y" ]; then
	for user in  "${user_list[@]}"
	do
	    echo  "Remove user ${user} [OK]"
	    sudo userdel ${user}
	done
    fi

}


function acceptRemoteLogin() {
    echo "AcceptRemoteLogin ..."
	for user in  "${user_list[@]}"
	do
	    echo  "Accept remote login for ${user} [OK]"
	    sudo usermod -s /bin/bash ${user}
	done
}


function demiedRemoteLogin() {
    echo "DemiedRemoteLogin ..."
	for user in  "${user_list[@]}"
	do
	    echo  "Denied remote login for ${user} [OK]"
	    sudo usermod -s /sbin/nologin ${user}
	done
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
























