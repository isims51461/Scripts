#!/bin/bash


#Descritpion: Script used to modify file and directory permissions

#Author: Ian S.

#Date: June 2020


for item in $(ls -l /var/log | awk '{print $9}'); 

do

     if 
        [ -f /var/log/${item} ]

     then

     echo " changing the permission of /var/log/${item} to 600 " 

     chmod 600 /var/log/${item}

     elif 
        [ -d /var/log/${item} ]

     then

     echo " changing the permission of /var/log/${item} to 600 "

     chmod 700 /var/log/${item}
 
     fi

done
     

