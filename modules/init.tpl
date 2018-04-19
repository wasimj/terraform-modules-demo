#!/bin/bash

yum install -y httpd
/etc/rc.d/init.d/httpd start

cd /var/www/html
wget https://s3.amazonaws.com/intro-to-devops-meetup/website.zip -O website.zip
unzip website.zip
