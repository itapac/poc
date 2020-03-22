#!/bin/sh

# ATTENZIONE, questo script tenta di trovare automaticamente la wifi da configurare.
# In caso di schede wifi multiple, commenta WLAN_DEV e decommenta la riga sotto, impostando manualmente la tua interfaccia

WLAN_DEV=`iwconfig  2>&1 | grep -v "no wirel" |  grep IEE | awk {'print $1'}`
#WLAN_DEV="wlan0"

echo "Configurazione essid STAIACASA.NET su interfaccia wireless $WLAN_DEV in corso"


sudo iwconfig $WLAN_DEV mode Ad-Hoc && echo "OK configurazione mode ad-hoc su $WLAN_DEV"
sudo iwconfig $WLAN_DEV essid staiacasa.net && echo "OK configurazione essid staiacasa.net su $WLAN_DEV"
sudo ifconfig $WLAN_DEV up

sudo ifconfig $WLAN_DEV 
sudo iwconfig $WLAN_DEV
