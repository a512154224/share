#!/bin/sh
wget https://raw.githubusercontent.com/a512154224/share/master/pgyvpn.tar.gz /root
mkdir /root/pgyvpninstall>/dev/null 2>&1 &
tar zxf pgyvpn.tar.gz -C /root/pgyvpninstall/
cp /root/pgyvpninstall/pgyvpn/usr/share/pgyvpn/ /usr/share/ -R
cp /root/pgyvpninstall/pgyvpn/usr/sbin/pgyvpn* /usr/sbin/
cp /root/pgyvpninstall/pgyvpn/.pgyvpnlib/ /root -R
rm -rf /root/pgyvpn*
echo "pgyvpn install success"