#!/bin/bash
hostname -f
cd /usr/local/ispconfig/interface/ssl/
mv ispserver.crt ispserver.crt-$(date +"%y%m%d%H%M%S").bak
mv ispserver.key ispserver.key-$(date +"%y%m%d%H%M%S").bak
mv ispserver.pem ispserver.pem-$(date +"%y%m%d%H%M%S").bak
ln -s /etc/letsencrypt/live/$(hostname -f)/fullchain.pem ispserver.crt
ln -s /etc/letsencrypt/live/$(hostname -f)/privkey.pem ispserver.key
cat ispserver.{key,crt} > ispserver.pem
chmod 600 ispserver.pem
cd /etc/postfix/
mv smtpd.cert smtpd.cert-$(date +"%y%m%d%H%M%S").bak
mv smtpd.key smtpd.key-$(date +"%y%m%d%H%M%S").bak
ln -s /usr/local/ispconfig/interface/ssl/ispserver.crt smtpd.cert
ln -s /usr/local/ispconfig/interface/ssl/ispserver.key smtpd.key
service postfix restart
service dovecot restart
cd /etc/ssl/private/
mv pure-ftpd.pem pure-ftpd.pem-$(date +"%y%m%d%H%M%S").bak
ln -s /usr/local/ispconfig/interface/ssl/ispserver.pem pure-ftpd.pem
chmod 600 pure-ftpd.pem
service pure-ftpd-mysql restart
apt install -y incron
cd /etc/init.d/
wget https://github.com/Nova-ITT/endispconfig/blob/master/le_ispc_pem.sh le_ispc_pem.sh
