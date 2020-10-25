#!/bin/bash

#Description: Software Package Installation
#Author: Ian (ismmmm@yahoo.com
#Date:June 2020


IN=install
R=remove

echo " Are you ready for package installation y/n "
read I
if [ ${I} = y ]
then 
sleep 4
echo " Package Installation "

yum ${IN}  git  -y &&
yum ${IN} curl -y &&
yum ${IN} docker -y &&
yum ${IN} wget -y 

echo " Installation Successful "

else
echo " Please return to file and run script when ready to install packages "
exit 10
fi



