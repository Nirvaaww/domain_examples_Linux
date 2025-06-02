#Nirvaww
apt-get install isc-dhcp-server -y
cat <<EOT > /etc/dhcp/dhcpd.conf
option domain-name "LT96pyme18.net";
option domain-name-servers 172.31.0.40;
option routers 172.31.0.1;

default-lease-time 3600;
max-lease-time 7200;
# ddns-update-style interim;
ddns-update-style none;
# ddns-domainname "LT96pyme18.net";
#update-static-leases on;


authoritative;


subnet 172.31.0.0 netmask 255.255.255.0 {
  range 172.31.0.140 172.31.0.150;
}
EOT
cat <<EOT > /etc/default/isc-dhcp-server
INTERFACESv4="enp0s3"
INTERFACESv6=""
EOT
systemctl start isc-dhcp-server