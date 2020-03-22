#!/bin/sh

# ATTENZIONE, questo script tenta di trovare automaticamente la wifi da configurare.
# In caso di schede wifi multiple, commenta WLAN_DEV e decommenta la riga sotto, impostando manualmente la tua interfaccia

WLAN_DEV=`iwconfig  2>&1 | grep -v "no wirel" |  grep IEE | awk {'print $1'}`
#WLAN_DEV="wlan0"

sudo iwconfig $WLAN_DEV mode Ad-Hoc
sudo iwconfig $WLAN_DEV essid staiacasa.net
