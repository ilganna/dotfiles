#!/bin/bash
sudo cp 00_michel /etc/sudoers.d/
sudo systemctl enable bluetooth.service
sudo pacman -Sy
sudo nano /etc/pacman.conf
sudo pacman -U nvidia-proprietary-drivers/nvidia-dkms-565.77-4-x86_64.pkg.tar.zst nvidia-proprietary-drivers/nvidia-utils-565.77-4-x86_64.pkg.tar.zst
sudo pacman -Sy linux-headers base-devel git system-config-printer flatpak teamspeak3 discord kde-utilities kdeconnect libreoffice zsh steam mangohud goverlay bitwarden thunderbird virtualbox neofetch amd-ucode bluez-utils go fuse timeshift cups cups-browsed cups-filters cups-pdf system-config-printer ghostscript gsfonts foomatic-db-engine foomatic-db foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds gutenprint foomatic-db-gutenprint-ppds
sudo echo "Enabled=False" >> /home/michel/.confg/kwalletrc
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -i
cd ..
rm -rf yay
yay -S brave-bin brother-mfc-l8650cdw brscan4
sudo brsaneconfig4 -a name="Brother-MFC-L8650" ip=192.168.2.30
sudo flatpak install lutris mangohud flatseal
sudo flatpak override --filesystem=xdg-config/MangoHud:ro &
exit
