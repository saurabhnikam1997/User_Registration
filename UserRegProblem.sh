#!/bin/bash -x

shopt -s extglob
echo "Welcome To The User Registration"


read -p "Enter First Name " firstname
read -p "Enter Last Name " lastname
read -p "Enter Email-id " email

namePattern="^[A-Z][a-z]{2,}$"

emailPattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
mobilePattern="^[0-9]{2}[-]{1}[0-9]{10}$"

passwordPattern="^([a-zA-Z]*[0-9]+[a-z0-9]*[A-Z])|([A-Z][a-z0-9]*+[0-9][a-zA-Z]*)$"
specialCharacter="[\^$.|?*+()[{]{1}"

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
checkPassword()
{
   read -p "Enter password " password
	if [[ ${#password} -ge 8 ]]; then
   	if [[ $password =~ $passwordPattern && $password =~ $specialCharacter ]]; then
      	echo Valid Password
   	else
      	echo Invalid Password
   	fi
	else
		echo Password Should Be Min 8 Chars Long
	fi
}
checkFirstName $firstname
checkLastName $lastname
checkEmail $email
checkMobileNumber $mobile
checkPassword $Password
