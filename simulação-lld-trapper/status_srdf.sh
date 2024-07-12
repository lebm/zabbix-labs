#!/usr/bin/bash

TMP=$(mktemp)
echo -n "powermax tdevs.discovery  " > $TMP
./tdevs_discovery.sh >> $TMP
zabbix_sender -z 192.168.56.101 -i $TMP
zabbix_sender -z 192.168.56.101 -i status
rm -f $TMP
