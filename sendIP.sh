#!/bin/sh
touch /var/tmp/checkip.eml
HOST=`hostname`
IP=`ip a|grep "inet\b" |grep -v 127|awk '{print $2}'|awk -F / '{print $1}'`

echo "From: msfadmin@metasploitable.local" >> /var/tmp/checkip.eml
echo "To: YOUR Email address" >> /var/tmp/checkip.eml
echo "$IP" >> /var/tmp/checkip.eml
sendmail -Am -v -f"<msfadmin@metasploitable.local>" "<YOUR Email address>" < /var/tmp/checkip.eml
rm -rf /var/tmp/checkip.eml
