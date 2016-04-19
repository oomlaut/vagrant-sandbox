#!/usr/bin/env bash
 
apt-get install -y nginx

service nginx start

echo "*** Updating nginx config"
rm -f /etc/nginx/sites-available/default
ln -s /vagrant/config/nginx /etc/nginx/sites-available/default

service nginx restart
