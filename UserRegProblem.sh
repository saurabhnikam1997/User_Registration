#!/bin/bash -x
echo "Welcome To The User Registration"

read -p "Enter Your Valid First Name" value
pattern="^[A-Z]{1}[a-z]{3,}$"

if [[ $value =~ $pattern ]]
then
	echo Name is valid
else
	echo Invalid Name
fi
