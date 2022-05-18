#!/bin/bash
# netmask http://trap.mtview.ca.us/~talby/netmask_2.4.tar.gz
netmask `wget -qO- http://ftp.apnic.net/stats/apnic/delegated-apnic-latest | awk -F'|' '/TW\|ipv4/ {print $4":+"($5-1)}'` | sed 's/ //g' > get-tw-ips.txt
