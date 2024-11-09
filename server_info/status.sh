#!/bin/bash

# color variables
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

# color functions

colorGreen(){
	echo -ne $green$1$clear
}
colorBlue(){
	echo -ne $blue$1$clear
}

# Script that returns the server status

server_name=$(hostname)

# function that returns the current memory usage on our server:

function memory_check() {
	echo ""
	echo " The current memory usage on ${server_name} is: "
	free -h
	echo ""
}

# Function that will return the current cpu usage on our server.

function cpu_check() {
	echo ""
	echo "CPU1= load on ${server_name} is: "
	echo ""
		uptime
	echo ""
}

function tcp_check() {
	echo ""
	echo "TCP connections on ${server_name}: "
	echo ""
		cat /proc/net/tcp | wc -l
	echo ""
}

function kernel_check() {
	echo ""
		echo "Kernel version on ${server_name} is: "
		echo ""
			uname -r
		echo ""
}
all_checks() {
	memory_check
	cpu_check
	tcp_check
	kernel_check
}


menu(){
	echo -ne "
	My First Menu
	$(colorGreen '1)') Memory usage
	$(colorGreen '2)') CPU load
	$(colorGreen '3)') Number of TCP connections
	$(colorGreen '4)') Kernal version
	$(colorGreen '5)') Check All
	$(colorGreen '0)') Exit
	$(colorBlue 'Choose an option: ') "
		read a
		case $a in
			1) memory_check ; menu ;;
			2) cpu_check ; menu ;;
			3) tcp_check ; menu ;;
			4) kernel_check ; menu ;;
			5) all_checks ; menu ;;
			0) exit 0 ;;
			*) echo -e $red"Wrong option."$clear;

WrongCommand;;
	esac
}
menu
