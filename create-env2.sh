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

git clone https://github.com/zjaks/boostrap-website.git

sudo rm -rf /var/www/html/index.html
sudo mv /home/ubuntu/boostrap-website/* /var/www/html/
sudo rm -rf /home/ubuntu/boostrap-website
