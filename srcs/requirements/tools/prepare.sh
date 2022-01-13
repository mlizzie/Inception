#!/bin/sh
echo "Preparing..."
echo "Set environment vars" 
if grep -q "127.0.0.1 mlizzie.42.fr" /etc/hosts ; then
echo "Changing the hosts file"
else
echo "Changing the hosts file"
echo '127.0.0.1 mlizzie.42.fr' >> /etc/hosts 
echo '127.0.0.1 www.mlizzie.42.fr' >> /etc/hosts
fi