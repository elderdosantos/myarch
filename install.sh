#!/usr/bin/env sh

echo "Updating all packages"
sudo pacman -Syyu

echo "Installing basic packages"

echo "Installing yay for AUR"
mkdir $HOME/.myarch/build
cd $HOME/.myarch/build
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

echo "Installing i3"
sudo pacman -S i3-gaps i3blocks

echo "Installing betterlockscreen"
sudo yay -S betterlockscreen

echo "Installing display manager"
sudo pacman -S lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm

echo "Installing i3 extras"
sudo pacman -S rxvt-unicode dmenu
