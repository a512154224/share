#!/bin/sh

case $1 in
	install)
		wget -O pgyvpn.tar.gz https://raw.githubusercontent.com/a512154224/share/master/dsm_pgyvpn/pgyvpn.tar.gz /root
		mkdir /root/pgyvpninstall>/dev/null 2>&1
		mkdir /etc/pgyvpn>/dev/null 2>&1
		tar zxf pgyvpn.tar.gz -C /root/pgyvpninstall/
		cp /root/pgyvpninstall/pgyvpn/usr/share/pgyvpn/ /usr/share/ -R
		cp /root/pgyvpninstall/pgyvpn/usr/sbin/pgyvpn* /usr/sbin/
		cp /root/pgyvpninstall/pgyvpn/.pgyvpnlib/ /root -R
		mv /root/pgyvpninstall/pgyvpn/pgyvpn /etc/pgyvpn
		rm -rf /root/pgyvpninstall&&rm -rf /root/pgyvp
		rm -f /root/pgyvpn.tar.gz
		echo "pgyvpn install success"
		;;
	uninstall)
		killall pgyvpn_svr 2>/dev/null
		killall pgyvpn_oraysl 2>/dev/null
		rm /usr/sbin/pgyvpn*>/dev/null 2>&1
		rm -r /root/.pgyvpnlib/>/dev/null 2>&1
		rm -r /usr/share/pgyvpn/>/dev/null 2>&1
		rm -r /etc/pgyvpn -r>/dev/null 2>&1
		echo "pgyvpn uninstall success"
		;;
	*)
		echo "Usage: $0 (start|stop)"
		;;
esac
