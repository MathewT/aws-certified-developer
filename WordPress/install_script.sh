#! /bin/bash

sudo apt-get -y update

sudo apt-get -y install curl zlib1g-dev libssl-dev

sudo apt-get -y install libxml2-dev libxslt1-dev libcurl4-openssl-dev 

sudo apt-get -y install mysql-client libmysqlclient-dev  zlib1g-dev libpcre3 libpcre3-dev 

sudo apt-get -y install apache2 apache2-utils

sudo apt-get -y install php libapache2-mod-php php-mcrypt php-mysql php-gd php-curl php-mbstring php-xml

sudo a2enmod rewrite

touch /var/www/html/.htaccess

sudo chown www-data:www-data /var/www/html/.htaccess

chmod 664 /var/www/html/.htaccess

## In apache.conf change to
## 	<Directory /var/www/>
##        Options Indexes FollowSymLinks
##        AllowOverride All
##        Require all granted
##	</Directory>


## create /var/www/html/ping.html

sudo service apache2 restart 



