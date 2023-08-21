#!/usr/bin/bash
whatis ansible &> /dev/null || sudo apt install ansible -y
whatis sshpass &> /dev/null || sudo apt install sshpass -y

ansible-playbook -i hosts.ini --ask-pass main.yml