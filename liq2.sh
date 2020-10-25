#!/bin/bash

#Description: Age Verification Liquor Store "

#Author: Ian S.

echo " Please verify your age "
read ${Age}
if 
    [ ${Age} -lt 10 ]
then 
echo " Go home and call your mom and dad " 
elif 
    [ ${Age} -lt 21 ] && [ ${Age} -gt 10 ] 
then 
echo " please do not go to aisle 13 "
elif 
    [ ${Age} -ge 21 ] && [ ${Age} -le 90 ] 
then 
echo " Enjoy aisle 13 "
elif 
    [ ${Age} -gt 90 ]
then
echo " Welcome to the store! Do you need help? (yes/no) "
read answer
   if   [ ${answer} = yes ]
   then 
   echo " Sure someone will be with you soon "
   else 
   echo " Enjoy your shopping on aisle 13 "
   fi
fi
