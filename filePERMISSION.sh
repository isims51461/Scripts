#!/bin/bash


#Descritpion: Script used to modify file and directory permissions

#Author: Ian S.

#Date: June 2020


for dir in /var/log/;

do

chmod 700 "$dir"

done

for file in /var/log/; 

do

chmod 600 "$file"

done




