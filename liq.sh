#!/bin/bash

#Description: Age verification for store Alcohol sale
#Author: Ian S
#Date: June 2020

echo " Please verify your age "

read Age

if [ ${Age} -ge 21 ]

then

echo " Welcome to our store, please enjoy aisle 13 "  

else

echo " DO NOT GOT TO AISLE 13, please! " 

fi
