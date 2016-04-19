#!/usr/bin/env bash

echo "*** Installing nginx"
apt-get install -y php5-fpm

echo "*** Improve fastCGI security"
sed -i -e "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php5/fpm/php.ini

echo "*** Restarting FPM"
service php5-fpm restart
