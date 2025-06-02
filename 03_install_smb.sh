#!/bin/bash
#Nirvaww
set -e  # Detenerse en caso de error

echo "Instalando paquetes necesarios..."
apt-get update
apt-get install -y samba smbldap-tools winbind smbclient samba-testsuite samba-common-bin samba-common registry-tools libsmbclient libpam-winbind

echo "Descomprimiendo el esquema de Samba..."
zcat /usr/share/doc/samba/examples/LDAP/samba.schema.gz > /etc/ldap/schema/samba.schema

echo "Creando archivo schema_convert.conf..."
cat <<EOF > schema_convert.conf
include /etc/ldap/schema/core.schema
include /etc/ldap/schema/cosine.schema
include /etc/ldap/schema/inetorgperson.schema
include /etc/ldap/schema/nis.schema
include /etc/ldap/schema/samba.schema
EOF

echo "Creando directorio temporal /tmp/ldif..."
mkdir -p /tmp/ldif

echo "Convirtiendo el esquema a LDIF con slaptest..."
slaptest -f schema_convert.conf -F /tmp/ldif

echo "Copiando el archivo LDIF convertido a /etc/ldap/schema..."
cp "/tmp/ldif/cn=config/cn=schema/cn={4}samba.ldif" "/etc/ldap/schema/samba.ldif"

echo "Proceso completado con éxito."