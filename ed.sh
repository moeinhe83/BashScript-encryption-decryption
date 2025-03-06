#!/bin/bash 

# Clear Terminal 
clear 

# Intro 
echo "This program is for encryption file & decryption file"
echo "====================================================="

# Getting Input From The User
echo "[1] => File Encryption"
echo "[2] => File Decryption"
read -p "Choose Your Option => " option 

# IF For Option
if [[ $option == "1" ]]
then 
	echo "This program is for encryption file"
	echo "==================================="

	read -p "Enter your file name for encryption => " namefile

	echo "Please Wait ..."
	sleep 3

	gpg -c $namefile

	read -p "Do i delete the original file [y/n] => " delete

	if [[ $delete == "y" ]] || [[ $delete == "Y" ]]
	then
        	echo "Ok , Delete Original File"
        	rm $namefile
	elif [[ $delete == "n" ]] || [[ $delete == "N" ]]
	then
        	echo "Ok"
	fi
elif [[ $option == "2" ]]
then 
	echo "This program is for decryption file"
	echo "==================================="

	read -p "Enter your file name for decryption => " namefile

	gpg -d $namefile
fi 


# Finish 
# Create By Moein Heshmati