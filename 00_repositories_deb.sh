#!/bin/bash
#Nirvaww
set -e

echo "Actualizando /etc/apt/sources.list para usar archive.debian.org..."

cat <<EOT > /etc/apt/sources.list
deb [trusted=yes] http://archive.debian.org/debian stretch main contrib non-free
deb-src [trusted=yes] http://archive.debian.org/debian stretch main contrib non-free
deb [trusted=yes] http://archive.debian.org/debian-security stretch/updates main contrib non-free
deb-src [trusted=yes] http://archive.debian.org/debian-security stretch/updates main contrib non-free
EOT

echo "Desactivando verificación de fechas de validez de los índices..."
echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf.d/99no-check-valid-until

echo "Actualizando índice de paquetes y aplicando actualizaciones..."
apt update && apt upgrade -y