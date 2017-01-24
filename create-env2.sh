#!/bin/bash

echo "Hello" > /home/ubuntu/hello.txt

sudo apt-get update -y
sudo apt-get install -y apache2

sudo systemctl enable apache2
sudo systemctl start apache2

sudo apt-get install -y git
sudo apt-get install -y php5 libapache2-mod-php5
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'

sudo /etc/init.d/apache2 restart

git clone https://github.com/zjaks/ITMT430.git


sudo rm -rf /var/www/html/*
sudo mv /home/vagrant/ITMT430/php-website-master/* /var/www/html/
sudo rm -rf /home/vagrant/php-website-master
