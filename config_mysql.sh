#!/bin/bash

__mysql_config() {
# Hack to get MySQL up and running... I need to look into it more.
echo "Running the mysql_config function."
#yum -y erase mysql mysql-server
#rm -rf /var/lib/mysql/ /etc/my.cnf
wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
rpm -ivh mysql57-community-release-el7-9.noarch.rpm
yum install mysql-server -y
systemctl start mysqld
grep 'temporary password' /var/log/mysqld.log
sleep 5
}

#__start_mysql() {
#echo "Running the start_mysql function."
#mysqladmin -u root password mysqlPassword
#killall mysqld
#sleep 10
#}

# Call all functions
#__mysql_config
#__start_mysql
