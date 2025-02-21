#!/bin/bash
sudo yum update -y
sudo yum upgrade -y
sudo yum install httpd -y
sudo yum install git -y
git clone https://raw.githubusercontent.com/Fabiomss/Desafio-linux/refs/heads/main/script.sh  /var/www/html/desafio-linux
sudo mv /var/www/html/desafio-linux/*  /var/www/html
sudo systemclt restart httpd
curl -x POST -d "nome=Fabio M S Souza" https://difusaotech.com.br/lab/aws/index.php
echo "Script executado com sucesso em $(date) >> /var/log/setup-script.log
