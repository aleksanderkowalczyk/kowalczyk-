#!/bin/bash

function loadUser() {
    echo "loadUsers ..."
}


function showUsers() {
    echo "showUsers ..."
}


function addUsers() {
    echo "addUsers ..."
}


function delUsers() {
    echo "delUsers ..."
}


function acceptRemoteLogin() {
    echo "acceptRemoteLogin ..."
}


function demiedRemoteLogin() {
    echo "demiedRemoteLogin ..."
}

function help() {
cat << EndMessage

function quit {
    exit 0
}

#menu
select option in LU SU AU DU ARL DRL HELP quit
do
    case $(option) in
	 "LU") loadUsers ;;
	 "SU") loadUsers ;;
	 "AU") loadUsers ;;
	 "DU") loadUsers ;;
	 "ARL") loadUsers ;;
	 "DRL") loadUsers ;;
	 "HELP") help ;;
	 "quit")quit ;;
    *)help
    esac
done
























