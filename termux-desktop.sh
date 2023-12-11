#!/bin/sh

echo ---------------------
echo Initializing Script
echo ---------------------
echo Starting Install

#Proot distro install
pkg install proot-distro -y
proot-distro install debian
proot-distro login debian
#added for termuxx11
pkg install x11-repo

#login debian
#update repo
apt update
#isntall dependencies
apt install xfce4 xfce4-goodies firefox-esr mousepad neofetch -y

#install vncserver
apt install tigervnc-standalone-server dbus-x11 -y
#set startup and exit command to vncserver directory
echo "vncserver -xtartup /usr/bin/startxfce4" >> /usr/bin/vncserver-start
chmod +x /usr/bin/vncserver-start
echo "vncserver -kill :1" >> /usr/bin/vncserver-stop
chmod +x /usr/bin/vncserver-stop

#start vncserver
echo ---------------------
echo vncstart
echo ---------------------

vncstart

#setpassword
echo ---------------------
echo Set Password
echo ---------------------

echo ---------------------
echo Install a vnc server from the appstore
echo set address as localhost:1 in the vnc server and set picture quality to high
echo 127.0.0.1:5901 or localhost:01
echo ---------------------
echo Install Complete
