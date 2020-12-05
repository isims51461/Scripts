
#!/bin/bash


#Description: Docker installation on CentOS7

#AUthor: Serge K
#Date: sept 2019
#Modified: Jan 2020
#Modified: May 2020


### Uninstall old versions if exist on the system


echo -e "\n Checking if your server is connected to the network...."

sleep 4

ping google.com -c 4  > /dev/null 2>&1

if
  [[ ${?} -ne 0 ]]
 then
 echo -e "\nPlease verify that your server is connected!!\n"
 exit 2
 fi

echo -e "\n Uninstalling Older version of Docker...."

sleep 4
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate  docker-logrotate docker-engine -y

## Install required packages

echo -e "\n Installing required packages...."

sleep 4

yum install -y yum-utils device-mapper-persistent-data lvm2

## Set up repository

echo -e "\n Setting up Docker repository...."

sleep 4

echo "nameserver 8.8.8.8" >> /etc/resolv.conf
"docker_centos7.sh" 99L, 1985C
