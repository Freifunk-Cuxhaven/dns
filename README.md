Use these commands (See: https://wiki.ubuntuusers.de/DNS-Server_Bind)

    sudo apt-get install bind9
    sudo /etc/init.d/bind9 stop
    nano /etc/bind/10.115.zone
    nano /etc/bind/db.ffcux
    sudo /etc/init.d/bind9 start

In every Change of the Databases you MUST count up the "serial" and restart Bind with:

    service bind9 restart


To Add these files to your dns server just setup Bind9 and add these two lines to your `/etc/bind/named.conf.local` files:

    zone "ffcux" {type master; file "/etc/bind/db.ffcux"; };
    zone "10.115.in-addr.arpa" {type master; file "/etc/bind/10.115.zone"; };

