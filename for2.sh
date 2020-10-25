#!/bin/bash
#Description:
#Author:
#Date:

for i in u6bt u7bt u8bt u9bt;

do

userdel -r ${i}
echo " user ${i} is successfully deleted "
sleep 3
done
