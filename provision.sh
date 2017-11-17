#!/bin/bash
wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo rpm -ivh epel-release-6-8.noarch.rpm
sudo yum update
sudo yum install ansible -y

sudo ansible-galaxy install geerlingguy.apache
sudo ansible-galaxy install geerlingguy.mysql

sudo ansible-playbook /ansible/playbook.yml -i /ansible/inventories/hosts --connection=local