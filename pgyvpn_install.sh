#!/bin/sh
mkdir /root/pgyvpninstall>/dev/null 2>&1 &
tar zxf pgyvpn.tar.gz -C /root/pgyvpninstall/
cp /root/pgyvpninstall/pgyvpn/usr/share/pgyvpn/ /usr/share/ -R
cp /root/pgyvpninstall/pgyvpn/usr/sbin/pgyvpn* /usr/sbin/
cp /root/pgyvpninstall/pgyvpn/.pgyvpnlib/ /root -R
echo "pgyvpn install success"