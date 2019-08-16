#!/bin/sh

case $1 in
	install)
		wget https://raw.githubusercontent.com/a512154224/share/master/pgyvpn.tar.gz /root
		mkdir /root/pgyvpninstall>/dev/null 2>&1
		mkdir /etc/pgyvpn>/dev/null 2>&1
		tar zxf pgyvpn.tar.gz -C /root/pgyvpninstall/
		cp /root/pgyvpninstall/pgyvpn/usr/share/pgyvpn/ /usr/share/ -R
		cp /root/pgyvpninstall/pgyvpn/usr/sbin/pgyvpn* /usr/sbin/
		cp /root/pgyvpninstall/pgyvpn/.pgyvpnlib/ /root -R
		mv /root/pgyvpninstall/pgyvpn/pgyvpn /etc/pgyvpn
		rm -rf /root/pgyvpninstall&&rm -rf /root/pgyvp
		echo "pgyvpn install success"
		/usr/share/pgyvpn/script/pgyvpn_monitor >/dev/null 2>&1 &
		;;
	uninstall)
		killall pgyvpn_svr 2>/dev/null
		killall pgyvpn_oraysl 2>/dev/null
		rm /usr/sbin/pgyvpn*
		rm /root/.pgyvpnlib/ -r
		rm /usr/share/pgyvpn/ -r
		rm /etc/pgyvpn -r
		;;
	*)
		echo "pgyvpn uninstall success"
		;;
esac
