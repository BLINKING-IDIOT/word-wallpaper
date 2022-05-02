!/bin/bash
clear
printf "\n\n"
if [[ $(id -u) -ne 0 ]] ; then
	mkdir ~/.config/autostart
	cp word-wallpaper.desktop ~/.config/autostart/word-wallpaper.desktop
	clear
	echo "you need root assess to install necessary packages"
	printf "\n"
	echo "so please enter the password to login as root!"
	printf "\n"
	sudo bash ${0}
	printf "\n\n"
	exit
fi
echo "NOTE: you need internet connction to install necessary packages"
echo "so please make sure computer is connected to internet"
printf "\n\n"
for i in 3 2 1
do
	echo "staring installation process in ${i}" ; 
	sleep 1
done
printf "\n\n" 
apt update -y
pip3 install pynput
FILE1=/usr/bin/word-wallpaper
if [ -f "$FILE1" ]; then
	rm /usr/bin/word-wallpaper
fi
cp word-wallpaper.py /usr/bin/word-wallpaper
mkdir /usr/share/word-wallpaper
cp black.jpg /usr/share/word-wallpaper/black.jpg
chmod +x /usr/bin/word-wallpaper
printf "\n\n"
echo "installed successfully!"
printf "\n"
echo "now relogin"
