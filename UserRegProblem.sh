#!/bin/bash -x

shopt -s extglob
echo "Welcome To The User Registration"


read -p "Enter First Name " firstname
read -p "Enter Last Name " lastname
read -p "Enter Email-id " email

namePattern="^[A-Z][a-z]{2,}$"

emailPattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
mobilePattern="^[0-9]{2}[-]{1}[0-9]{10}$"

checkFirstName()
{
	firstname=$1

	if [[ $firstname =~ $namePattern ]]
	then
		echo Valid First Name
	else
		echo Invalid First Name
	fi
}
checkLastName()
{
	lastname=$1

   if [[ $lastname =~ $namePattern ]]
   then
      echo Valid Last Name
   else
      echo Invalid Last Name
   fi
}
checkEmail()
{
	email=$1

	if [[ $email =~ $emailPattern ]]
	then
   	 	echo Valid Email-Id
	else
   		echo Invalid Email-Id
	fi
}
checkMobileNumber()
{
	echo "Enter CountryCode then Hiphen and thnen Mobile Number "
	read mobile
	if [[ $mobile =~ $mobilePattern ]]
   	then
      		echo Valid Mobile Number
   	else
      		echo Invalid Mobile Number
   	fi

}
checkFirstName $firstname
checkLastName $lastname
checkEmail $email
checkMobileNumber $mobile
