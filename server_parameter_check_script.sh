#!/bin/bash -x

#Description: Script to check server parameters
#Author: Ian S
#Date: June 2020

echo "System Parameters check... please wait"
sleep 4

##Variables

NumCPU=$(nproc)
Mem=$(free -m | grep -i Mem | awk '{print $2}')
Distro=$(cat /etc/*release | grep ^NAME |awk -F = '{print$2}')

## Check if grub.cfg file exists

if [ -f /boot/grub2/grub.cfg ]
then
echo " /boot/grub2/grub.cfg file exists "
else
echo " /boot/grub2/grub.cfg file does not exist "
fi

## Check if user ansible exists

id ansible

if [ $? -eq 0 ] 
then
echo " User ansible exists "
else
echo " User ansible does not exist "
fi

## Check if /home/ansible exists

if [ -f /home/ansible ]
then
echo " /home/ansible exists "
else
echo " /home/ansible does not exist "
fi

## Check if Selinux file exists

if [ -f /etc/selinux/config ]
then
echo " /etc/selinux/config file exists "
else
echo " /etc/selinux/config file does not exist "
fi

## Check Selinux Status

getenforce
#sestatus
#cat /etc/selinux/config

echo " Selinux status is $(getenforce) "

## Check if number of PC's is 2 or more

if [ $NumCPU -lt 2 ]
then
echo " This system does not have enough CPU's "
else
echo " This system has enough CPU's "
fi

## Check if system memory is  1500 or more

if [ $Mem -lt 1500 ]
then
echo " This system does not have sufficient Memory "
else
echo " The memory meets the requirement "
fi

## Check if sshd config file exists

if [ -f /etc/ssh/sshd_config ]
then
echo " /etc/ssh/sshd_config exists "
else
echo " /etc/ssh/sshd_config does not exist "
fi

## Check Linux distro

echo " This system is ${Distro} "
