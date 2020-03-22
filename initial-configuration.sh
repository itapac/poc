#!/bin/sh

conf_file="/etc/yggdrasil.conf"
#conf_file="empty.conf"

itapac_public_peers='Peers: [ "tcp://45.12.160.19:53939" ]'

yggdrasil -genconf > $conf_file

sed -e "s,Peers: \[\],$itapac_public_peers,g" $conf_file > ${conf_file}.new && mv ${conf_file}.new ${conf_file}
