Use these commands (See: https://wiki.ubuntuusers.de/DNS-Server_Bind)

    nano /etc/bind/10.115.zone
    nano /etc/bind/db.ffcux
    service pdns restart

In every Change of the Databases you MUST count up the "serial" and restart Bind with:

    service pdns restart


To Add these files to your dns server just setup Bind9 and add these two lines to your `/etc/bind/named.conf.local` files:

    zone "ffcux" {type master; file "/etc/bind/db.ffcux"; };
    zone "10.115.in-addr.arpa" {type master; file "/etc/bind/10.115.zone"; };

