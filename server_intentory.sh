#!/bin/bash

#Description

#Author: Me

#Date:


Mem=$(free -m)

uname -r 
sleep 2
lsblk
sleep 2
echo ${Mem} 
sleep 2
lscpu
sleep 2
cat /etc/*release
sleep 2
nproc

