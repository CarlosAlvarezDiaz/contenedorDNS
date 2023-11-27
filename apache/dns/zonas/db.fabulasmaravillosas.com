$TTL    604800
@       IN      SOA     ns.fabulasmaravillosas.int. info@fabulasmaravillosas.int. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      ns.fabulasmaravillosas.int.

ns1     IN      A       172.20.0.10
www     IN      A       172.20.0.3
alias   IN      CNAME   www
texto   IN      TXT     "Hola mundo"