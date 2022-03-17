#!/usr/bin/bash
yum update -y
yum install httpd -y
yum install git -y
mkdir /acode
cd /acode
git clone --branch wood https://github.com/Austin-Simpson/cpsc298_2022.git
cp cpsc298_2022/austin/html/index.html /var/www/html/index.html
service httpd start
chkconfig httpd on
