#!/bin/bash
STATUS=true
Internet=tun0
Kz1=192.168.1.101/32
Kz2=192.168.1.102/32
Km4=192.168.1.103/32

echo -n "Status Kazoo1: $Kz1:   "
if ip route add $Kz1 via 192.168.0.1 dev $Internet
then
  echo "kazoo4-01: ok"
else
  STATUS=false
fi

echo -n "Status Kazoo2: $Kz2:   "
if ip route add $Kz2 via 192.168.0.1 dev $Internet
then
  echo "kazoo4-02: ok"
else
  STATUS=false
fi

echo -n "Status Kamailio4: $Km4:   "
if ip route add $Km4 via 192.168.0.1 dev $Internet
then 
  echo "kamailio:  ok"
else
  STATUS=false
fi

if $STATUS
then 
  echo "Done het roi ne hehehe"
else
  echo "Sai roi nha :'("
fi
unset STATUS Kz1 Kz2 Km4 Internet

: '
ar='test comment'
echo $ar
echo "mmuahah"
'
