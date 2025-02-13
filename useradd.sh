#!/bin/bash
username=riya
useradd ${username}
echo "Adding user- ${username}"
echo "Successfully added user--${username}"
echo password | passwd --stdin ${username}
