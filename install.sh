!/bin/bash
clear
echo 
echo
if [[ $(id -u) -ne 0 ]] ; then
	cp word-wallpaper.desktop ~/.config/autostart/word-wallpaper.desktop
	echo "you need root assess to install necessary packages"
	echo
	echo "so please enter the password to login as root!"
	echo
	sudo bash ${0}
	echo 
	echo 
	exit
fi
echo "NOTE: you need internet connction to install necessary packages"
echo "so please make sure computer is connected to internet"
echo
echo
for i in 3 2 1
do
	echo "staring installation process in ${i}" ; 
	sleep 1
done
echo 
echo 
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
echo 
echo
echo "installed successfully!"
echo
echo "now relogin"
