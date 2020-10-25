#/bin/bash -x

#Description: This script is intended to preserve storage space by deleting log files that are 30 days or more old every on a bi-weekly basis
#Author: Ian S.
#Date: July 2020

sed -i '1i * * * * */2  /var/log/LogFileDeletion.sh' /var/spool/cron/root

echo " Deleting Log Files 30 days or more old "

find /var/log -name "*.log" -type f -mtime +30 -exec rm -f {} \;

if [ -f /var/log/LogfileDeletion ]

then

echo " File Exists "

else

touch /var/log/LogfileDeletion

fi

Logfile="/var/log/LogfileDeletion.log"


