#!/bin/bash
username=riya
useradd ${username}
echo "Adding user- ${username}"
echo "Successfully added user--${username}"
echo password | passwd --stdin ${username}


#Inputs before Execution
echo ${0}
echo ${1}
echo ${2}
echo ${*}
echo ${#}
