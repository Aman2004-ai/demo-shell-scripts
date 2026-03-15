#!/bin/bash


<<help
this is a shell script to 
create a user
help


echo "======================creation of user====================="

read -p "enter the username:" username
read -p "enter tjhe password:" password

 sudo useradd -m  "$username" 


 echo -e  "$password\n$password" | sudo passwd "$username"

echo "================creation of usr computer====="
sudo userdel $username
echo "==================deletion of user completed============="
if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then 
	
	echo "as wc is 0 the user is deleted"

else 
	echo "the user was not deleted"





