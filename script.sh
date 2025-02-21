#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo yum install git -y
sudo git clone https://github.com/Fabiomss/Desafio-linux  /var/www/html/desafio-linux
sudo mv /var/www/html/desafio-linux/*  /var/www/html
sudo systemctl restart httpd
curl -x POST -d "nome=Fabio M S Souza" https://difusaotech.com.br/lab/aws/index.php
echo "Script executado com sucesso em $(date) >> /var/log/setup-script.log
