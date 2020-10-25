#!/bin/bash

#Description: Kernel Version Test
#Author: Ian S.
#Date June 27th

Kernel="$(uname -r | awk -F "." '{print $1}')"

if [ ${Kernel} \< 3 ]
then
echo " Your kernel is not up to date "
else
echo " Your system is up to date. "
fi

