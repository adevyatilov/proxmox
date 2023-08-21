# Ansible роль Proxmox
Ansible роль, содержит установку Proxmox VE

## Описание заданий
Для операционной системы Debian:
 - `bridge-Debian.yml` - создание сетевого моста без NAT
 - `proxmox-Debian.yml` - установка Proxmox
 - `without_sleep-Debian.yml` - отключаем режимы сна, гибернации

## Запуск
```bash
# В переменной proxmoxIP указываем IP адрес, куда будет устанавливаться Proxmox VE
proxmoxIP="you IP"

# Указываем IP адрес в файл инвентори
sed -i "s/# <IP proxmox sever>/${proxmoxIP}/" hosts.ini

# Выдаем права на запуск
sudo chmod u+x run.sh

# Запускаем скрипт развертывания
./run.sh
```