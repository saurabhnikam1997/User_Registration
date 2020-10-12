#!/bin/bash -x
echo "Welcome To The User Registration"

checkDetails()
{
read -p "Enter Your Valid First Name" firstname

pattern="^[A-Z{1}[a-z]{2,}$"

if [[ $firstname =~ $pattern ]]
then
	echo Name is valid
else
	echo Invalid Name
fi
}
checkDetails
