#!/bin/bash
##set -e
#dnf install nginx -y
#echo frontend setup............
#if [ $? -ne 0 ]; then
#  echo "Nginx install Failed.."
#  exit
#fi
#
#systemctl enable nginx
#systemctl start nginx
#rm -rf /usr/share/nginx/html/*


## check whether the script is running as a root user or not
#
USER_UID=$(id -u)
echo "$USER_UID"
if [ ${USER_UID} -ne 0 ]; then
  echo -e "\e[1;31mYou must be a root user to perform this script\e[0m"
  exit
  fi
echo welcome to fronend script

 yum install nginx -y
 systemctl enable nginx
 systemctl start nginx

rm -rf /usr/share/nginx/html/*

curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip


if [ $? -ne 0 ]; then
  echo "Download Frontend Failed.."
  exit
fi

cd /usr/share/nginx/html
unzip /tmp/frontend.zip
systemctl restart nginx
