#!/bin/bash
clear
if [[ $(id -u) -ne 0 ]] ; then
	rm ~/.config/autostart/word-wallpaper.desktop
	echo "you need root assess to uninstall the tool"
	echo
	echo "so please enter the password to login as root!"
	echo
	sudo bash ${0}
	exit
fi
rm /usr/bin/word-wallpaper
rm -r /usr/share/word-wallpaper
echo
echo "uninstalled successfully!"
echo
