#!/usr/bin/env bash
cp /ansible/files/pruebas.pem /tmp/pruebas.pem
chmod 600 /tmp/pruebas.pem
sudo ansible-playbook /ansible/playbook.yml -i /ansible/inventories/produccion