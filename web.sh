#!/bin/bash

#Description: Creation of mysql webserver to eliminate errors

#Author: Ian S

#Date: June 2020

yum update -y

yum install httpd -y

systemctl start httpd
systemctl enable httpd
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd  --reload

systemctl start httpd
yum install mysql-server -y 
yum install mariadb-server -y
systemctl enable mariadb
yum install php php-mysql -y
touch info.php /var/www/html/

echo " <?php 
phpinfo(); 
?>
:wq!" >> info.php /var/www/html/

systemctl restart httpd

yum install php-gd -y

cd /tmp

wget https://wordpress.org/wordpress-5.1.1.tar.gz

tar -xzvf wordpress-5.1.1.tar.gz

cp -r wordpress/* /var/www/html/

mkdir /var/www/html/wp-content/uploads

cd /var/www/html

cp wp-config-sample.php  wp-config.php

chown -R apache:apache /var/www/html/*

systemctl restart httpd

echo " We will need some information to configure the database connection. Please hit enter when you are ready"
read

echo -n " Please enter your database: "
read db

echo -n " Please enter your database user: "

read dbuser

echo -n " Please enter your database user password: "

read p

sed -i "s/database_name_here/${db}/" /var/www/html/wp-config.php

sed -i "s/database_name_here/${dbuser}/" /var/www/html/wp-config.php

sed -i "s/database_name_here/${p}/" /var/www/html/wp-config.php


