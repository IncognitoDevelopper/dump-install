#!/bin/bash

### BASE ###

sudo apt update && upgrade
sudo apt install curl
sudo apt install git
sudo apt install make

### BOOT MENU ###

sudo cp -r themes/ /boot/grub/themes/
#edit /etc/default/grub and add this line GRUB_THEME=/boot/grub/themes/kali/theme.txt

### GCC ###

sudo apt install gcc

### VALGRIND ###

sudo apt install valgrind

### EMACS ###

sudo apt install emacs
sudo git clone https://github.com/Epitech/epitech-emacs.git
cd epitech-emacs
git checkout 278bb6a630e6474f99028a8ee1a5c763e943d9a3
./INSTALL.sh local
./INSTALL.sh system
cd .. && sudo rm -rf epitech-emacs

### CRITERION ###

sudo curl -sSL "https://github.com/Snaipe/Criterion/releases/download/v2.4.0/criterion-2.4.0-linux-x86_64.tar.xz" -o criterion-2.4.0.tar.xz
sudo tar xf criterion-2.4.0.tar.xz
sudo cp -r criterion-2.4.0/* /usr/local/
sudo echo "/usr/local/lib" > /etc/ld.so.conf.d/usr-local.conf
sudo ldconfig
sudo rm -rf criterion-2.4.0.tar.xz criterion-2.4.0/

### NCURSES ###

sudo apt install libncurses6

### CSFML ###

sudo apt install libcsfml-dev

### ZSH ###

sudo apt install zsh
sudo apt install zsh-syntax-highlighting
sudo apt install zsh-autosuggestions
sudo apt install zsh-common
sudo cp .zshrc /etc/zsh/zshrc
sudo cp .zshrc $HOME/.zshrc

### CODING-STYLE-CHECKER ###

sudo apt install docker
sudo apt install docker-compose
sudo cp coding-style.sh /usr/bin/coding-style
sudo chmod +x coding-style
