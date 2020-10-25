#!/bin/bash


CPUNUM=$(nproc)

if [ ${UID} -ne 0 ]
then 
echo " you need root access "
exit 10
fi
if 

   [ $CPUNUM -lt 2 ]

then 
echo " This system does not meet the number of cpu requirements "
fi

if [ -f cpu.sh ]

then 
echo " yes, pay attention "

else
echo " missing file "

fi 
