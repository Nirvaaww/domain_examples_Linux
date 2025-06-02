#Nirvaww
apt-get install bind9 -y
cp /etc/bind/db.empty /var/cache/bind/db.LT96pyme18.net
cp /etc/bind/db.empty /var/cache/bind/db.172.31.0
cat <<EOT > /etc/bind/named.conf.local
zone "LT96pyme18.net" {
        type master;
        file "db.LT96pyme18.net";
};

zone "0.31.172.in-addr.arpa" {
        type master;
        file "db.172.31.0";
};
EOT
cat <<EOT > /var/cache/bind/db.LT96pyme18.net
\$TTL 86400
@       IN SOA  LT96pyme18.net. root.LT96pyme18.net. (
                                1          ; serial
                                604800     ; refresh
                                86400      ; retry
                                2419200    ; expire
                                86400      ; minimum
                                )
;
@       IN              NS      ns.LT96pyme18.net.
ns                      A       172.31.0.40  ; IP del servidor DNS
LSDT96-18               A       172.31.0.40
Uc22-18                 A       172.31.0.140
EOT
cat <<EOT > /var/cache/bind/db.172.31.0
\$TTL 86400
@       IN SOA  LT96pyme18.net. root.LT96pyme18.net. (
                                1          ; serial
                                604800     ; refresh
                                86400      ; retry
                                2419200    ; expire
                                86400      ; minimum
                                )
;
@       IN              NS      ns.LT96pyme18.net.
40                      PTR     ns.LT96pyme18.net.
                        PTR     LSDT96-18.LT96pyme18.net.
140                     PTR     Uc22-18.LT96pyme18.net.
EOT
service bind9 start
service bind9 reload
service bind9 restart
service bind9 status