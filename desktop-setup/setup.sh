#!/bin/bash
# Shu Desktop Setup Script
# Author: Shu / deniz.frosty@gmail.com
# Last update: 03/06/2019
# Supports: Kali Linux 2019-08-22


echo "[ * ] Starting script.."


echo "[ * ] Installing curl.."
sudo apt-get install curl -y


echo "[ * ] Installing xfce.."
sudo apt-get install kali-desktop-xfce -y
echo "--> Configuring xfce as default session manager, select xfce-start.."
update-alternatives --config x-session-manager


echo "[ * ] Installing xclip.."
sudo apt-get install xclip -y


echo "[ * ] Installing rxvt-unciode and xsel(optional?).."
sudo apt-get install rxvt-unicode xsel -y
echo "--> Installing urxvt scripts(clipboard).."
mkdir -p ~/.urxvt/ext
cp -R ./configs/urxvt/scripts/* ~/.urxvt/ext/
echo "--> Configuring urxvt.."
cp ./configs/urxvt/.Xresources ~/

echo "[ * ] Installing nitrogen.."
sudo apt-get install nitrogen -y


echo "[ * ] Installing i3.."
sudo apt-get install i3-wm -y
mkdir -p ~/.i3
echo "--> Copying wallpapers to ~/.i3/"
cp -R ./wallpapers/* ~/.i3/
echo "--> Configuring i3.."
cp ./configs/i3/config ~/.i3/

echo "[ * ] Installing oh-my-zsh.."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "--> Configuring oh-my-zsh.."
cp ./configs/oh-my-zsh/.zshrc ~/

echo "-------------------------------------------------"
echo "** You have to do the changes below in xfce by yourself(Optional). **"
echo "- Remove xfwm and xfdesktop in Settings->Session & Startup"
echo "- Add i3 in to Settings->Session & Startup->App autostart (command: i3)"
echo "- Select adwaita-dark theme in xfce"
echo "- Remove all shortcuts in Settings->Keyboard->Application Shortcuts"
echo "- Remove panelbar"
echo "--- Finished ---"
