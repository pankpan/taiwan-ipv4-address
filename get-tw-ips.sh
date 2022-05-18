#!/bin/bash
netmask `wget -qO- http://ftp.apnic.net/stats/apnic/delegated-apnic-latest | awk -F'|' '/TW\|ipv4/ {print $4":+"($5-1)}'` | sed 's/ //g' > tw-ips.txt
