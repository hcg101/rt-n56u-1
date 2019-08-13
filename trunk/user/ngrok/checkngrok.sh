#!/bin/sh
#认证服务器
ngrok_Hostname=`nvram get ngrok_Hostname`
[ -z $ngrok_Hostname ] && ngrok_Hostname="ngrok.612459.com" && nvram set ngrok_Hostname=$ngrok_Hostname

ngrok_ctport=`nvram get ngrok_ctport`
[ -z $ngrok_ctport ] && ngrok_ctport="80" && nvram set ngrok_ctport=$ngrok_ctport

ngrok_getway=`nvram get ngrok_getway`
[ -z $ngrok_getway ] && ngrok_getway=$(nvram get lan_ipaddr) && nvram set ngrok_getway=$ngrok_getway

ngrok_authuserid=`nvram get ngrok_authuserid`
[ -z $ngrok_authuserid ] && ngrok_authuserid=$(/sbin/ifconfig br0  | sed -n '/HWaddr/ s/^.*HWaddr */HWADDR=/pg'  | awk -F"=" '{print $2}' |sed -n 's/://pg'| awk -F" " '{print $1}') && nvram set ngrok_authuserid=ngrok_authuserid

ngrok_authpassword=`nvram get ngrok_authpassword`
[ -z $ngrok_authpassword ] && ngrok_authpassword="" && nvram set ngrok_authpassword=$ngrok_authpassword

ngrok_userid=`nvram get ngrok_userid`
[ -z $ngrok_userid ] && ngrok_userid=$(/sbin/ifconfig br0  | sed -n '/HWaddr/ s/^.*HWaddr */HWADDR=/pg'  | awk -F"=" '{print $2}' |sed -n 's/://pg'| awk -F" " '{print $1}') && nvram set ngrok_userid=$ngrok_userid

ngrok_HTTPPort=`nvram get ngrok_HTTPPort`
[ -z $ngrok_HTTPPort ] && ngrok_HTTPPort="4443" && nvram set ngrok_HTTPPort=$ngrok_HTTPPort

ngrok_password=`nvram get ngrok_password`
[ -z $ngrok_password ] && ngrok_password="SqJIlowYhh6GGdkh" && nvram set ngrok_password=$ngrok_password

ngrok_lanif=`nvram get ngrok_lanif`
[ -z $ngrok_lanif ] && ngrok_lanif=$(nvram get lan_ipaddr) && nvram set ngrok_lanif=$ngrok_lanif

#ngrok_domain=`nvram get ngrok_domain`
#[ -z $ngrok_domain ] && ngrok_domain="login.yc" && nvram set ngrok_domain=$ngrok_domain
ngrok_domain=`nvram get ngrok_domain`
[ -z $ngrok_domain ] && ngrok_domain=$(/sbin/ifconfig br0  | sed -n '/HWaddr/ s/^.*HWaddr */HWADDR=/pg'  | awk -F"=" '{print $2}' |sed -n 's/://pg'| awk -F" " '{print $1}')  && nvram set ngrok_domain=$ngrok_domain


    PIDS=$(nvram get ngrok_enable)
    if [ "$PIDS" != 1 ] ; then
logger -t "ngrok" "Ngrok clinet not runing~~~"
else
killall -9 ngrok
sleep 3
/usr/bin/ngrok.sh start 
logger -t "ngrok" "Ngrok clinet  started~~~"
fi
