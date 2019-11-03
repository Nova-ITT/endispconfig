#! /bin/bash
Más información en: https://www.profesionalreview.com/2017/03/12/shell-script-linux/
apt-get install -y apt-transport-https lsb-release ca-certificates
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list
apt-get update -y
apt-get upgrade -y
apt-get install -y php5.6 php5.6-cli php5.6-cgi php5.6-fpm
a2enmod proxy_fcgi setenvif
a2enconf php5.6-fpm
systemctl reload apache2
apt-get install -y php7.0 php7.0-cli php7.0-cgi php7.0-fpm
a2enmod proxy_fcgi setenvif
a2enconf php7.0-fpm
systemctl reload apache2
apt-get install -y php7.1 php7.1-cli php7.1-cgi php7.1-fpm
a2enmod proxy_fcgi setenvif
a2enconf php7.1-fpm
systemctl reload apache2
apt-get install -y php7.2 php7.2-cli php7.2-cgi php7.2-fpm
a2enmod proxy_fcgi setenvif
a2enconf php7.2-fpm
systemctl reload apache2
apt-get install -y php7.3 php7.3-cli php7.3-cgi php7.3-fpm
a2enmod proxy_fcgi setenvif
a2enconf php7.3-fpm
systemctl reload apache2
apt-get install -y php php-cli php-cgi php-fpm
apt-get install -y php-memcache php-memcached
apt-get install -y php-apcu php-apcu-bc
apt-get install -y php-xdebug
update-alternatives --config php
update-alternatives --config php-cgi
service php5.6-fpm restart
service php7.0-fpm restart
service php7.1-fpm restart
service php7.2-fpm restart
service php7.3-fpm restart
apt-get install -y php5.6-gd php5.6-mysql php5.6-imap php5.6-mcrypt php5.6-curl php5.6-intl php5.6-pspell php5.6-recode php5.6-sqlite3 php5.6-tidy php5.6-xmlrpc php5.6-xsl php-gettext php5.6-zip php5.6-mbstring php5.6-soap php7.1-gd php7.1-mysql php7.1-imap php7.1-mcrypt php7.1-curl php7.1-intl php7.1-pspell php7.1-recode php7.1-sqlite3 php7.1-tidy php7.1-xmlrpc php7.1-xsl php-gettext php7.1-zip php7.1-mbstring php7.1-soap php7.2-gd php7.2-mysql php7.2-imap php7.2-curl php7.2-intl php7.2-pspell php7.2-recode php7.2-sqlite3 php7.2-tidy php7.2-xmlrpc php7.2-xsl php-gettext php7.2-zip php7.2-mbstring php7.2-soap php7.3-gd php7.3-mysql php7.3-imap php7.3-curl php7.3-intl php7.3-pspell php7.3-recode php7.3-sqlite3 php7.3-tidy php7.3-xmlrpc php7.3-xsl php-gettext php7.3-zip php7.3-mbstring php7.3-soap -y
a2enmod proxy_fcgi setenvif
a2enconf php5.6-fpm
systemctl reload apache2
a2enmod proxy_fcgi setenvif
a2enconf php7.0-fpm
systemctl reload apache2
a2enmod proxy_fcgi setenvif
a2enconf php7.1-fpm
systemctl reload apache2
a2enmod proxy_fcgi setenvif
a2enconf php7.2-fpm
systemctl reload apache2
a2enmod proxy_fcgi setenvif
a2enconf php7.3-fpm
systemctl reload apache2
service php5.6-fpm restart
service php7.0-fpm restart
service php7.1-fpm restart
service php7.2-fpm restart
service php7.3-fpm restart
apt-get -y install libapache2-mod-fcgid libapache2-mod-php apache2-suexec-pristine
service apache2 restart
service php5.6-fpm restart
service php7.0-fpm restart
service php7.1-fpm restart
service php7.2-fpm restart
service php7.3-fpm restart
service apache2 restart
service php*-fpm restart
