#!/bin/bash
#echo "IPV4 address"
#ip -4 addr show | grep inet
#echo "************"
#ip -6 addr show | grep inet6



#read -p "Enter url---" url
#echo $url
#ping -c 3 $url > /dev/null
#
#if [ $? -eq 0 ]; then
#  echo "Internet is reachable"
#  else
#    echo "Internet is not reachable"
#    fi


echo "display open ports"
echo "**************************"
sudo yum install net-tools
netstat -tuln


