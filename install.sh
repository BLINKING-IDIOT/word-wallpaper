!/bin/bash
clear
printf "\n\n"
if [[ $(id -u) -ne 0 ]] ; then
	mkdir ~/.config/autostart &>/dev/null
	cp word-wallpaper.desktop ~/.config/autostart/word-wallpaper.desktop
	printf "you need root assess to install necessary packages\n\n"
	printf "so please enter the password to login as root!\n\n"
	sudo bash ${0}
	printf "\n\n"
	exit
fi
printf "NOTE: you need internet connction to install necessary packages"
printf "so please make sure computer is connected to internet\n\n"
for i in 3 2 1
do
	printf "staring installation process in ${i}\n" ; 
	sleep 1
done
printf "\n\n" 
apt update -y
pip3 install pynput
rm /usr/bin/word-wallpaper &>/dev/null
cp word-wallpaper.py /usr/bin/word-wallpaper
mkdir /usr/share/word-wallpaper &>/dev/null
cp black.jpg /usr/share/word-wallpaper/black.jpg
chmod +x /usr/bin/word-wallpaper
printf "\n\ninstalled successfully!"
printf "\nnow relogin ;)"