#!/bin/bash

#Description:

#Author:

#Date



if
    [ ${UID} -ne 0 ]


then 
echo " you need root access to run this command "
exit 10
fi 



yum install finger -y

if [ $? -eq 0 ]
then
echo " successful "
else 
echo " unsuccessful "
exit 10
fi
yum install finger -y

yum install curl -y

yum install zip -y


