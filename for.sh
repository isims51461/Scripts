#!/bin/bash
#Description:
#Author:
#Date:

for i in u6bt u7bt u8bt u9bt;

do

useradd ${i}
echo " user ${i} is successfully created "
sleep 3
done
