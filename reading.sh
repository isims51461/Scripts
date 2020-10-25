#!/bin/bash

#Deacrip
#author
#Date

echo " what is your name? "
read name

echo " what year were you born? "

read year

echo " What city are you from? "

read city 

echo "what brought you to our store today? "

read why

echo " Hello ${name}. You were born in ${year}, and are from ${city}. You came here because ${why}. "

if  [ -z ${name} ] || [ -z ${year} ] || [ -z ${city} ] || [ -z ${why} ]
then
echo " Please answer all questions "
exit 10
fi
