#!/bin/bash
sudo apt-get install proftpd-*
sudo apt-get install openssl
sudo mkdir /etc/proftpd/ssl
sudo cp proftpd.conf /etc/proftpd/proftpd.conf
sudo cp modules.conf /etc/proftpd/modules.conf
sudo cp tls.conf /etc/proftpd/tls.conf
sudo openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem -keyout /etc/proftpd/ssl/proftpd.key.pem
sudo chmod 640 /etc/proftpd/ssl/proftpd.cert.pem
sudo chmod 600 /etc/proftpd/ssl/proftpd.key.pem
sudo systemctl restart proftpd
