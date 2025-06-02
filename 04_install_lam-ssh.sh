#!/bin/bash
#Nirvaww
# Verificar que se ejecute como root
if [[ $EUID -ne 0 ]]; then
    echo "Este script debe ejecutarse como root. Usa sudo."
    exit 1
fi

echo "Actualizando sistema..."
apt update && apt upgrade -y

echo "Instalando Apache, PHP y dependencias para LAM..."
apt-get install php-xml -y
apt-get install php-zip -y

echo "Instalando LAM (LDAP Account Manager)..."
apt-get install ldap-account-manager

echo "Instalando servidor SSH..."
apt install -y openssh-server
systemctl enable ssh
systemctl start ssh

echo ""
echo "===== INSTALACIÓN COMPLETADA ====="
echo "LDAP Account Manager (LAM) disponible en: http://tu-ip/lam"
echo "Configuración en: /etc/ldap-account-manager"
echo "Puedes acceder vía SSH con: ssh usuario@ip"