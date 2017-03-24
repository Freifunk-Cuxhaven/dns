
Edit /etc/powerdns/bindbackend.conf and add

    include "/etc/powerdns/dns_ffcux/named.conf.local";


In every Change of the Databases you MUST count up the "serial" and restart powerdns with:

    service pdns restart


