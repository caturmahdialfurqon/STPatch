#!/bin/bash

# Set color variables (optional)
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
reset='\033[0m'


echo -e "OS Selection Menu"
echo -e "1. ${green}MacOS${reset}"
echo -e "2. ${yellow}Linux${reset}"
echo -e "3. ${blue}Windows${reset}"
echo -e "4. ${red}Exit${reset}"

read -p "Choose an option: " option

case $option in
  1)
    echo -e "You selected the first menu: ${green}MacOS${reset}"
    echo -e "${yellow}sudo password is required${reset}"
    read -p "Are you sure you want to patch Sublime Text? (y/n): " confirm
    if [[ $confirm == "y" || $confirm == "Y" ]]; then
      echo -e "${yellow}Start Patching Sublime Text...${reset}"
      sudo perl -pi -e 's/\x80\x79\x05\x00\x0F\x94\xC2/\xC6\x41\x05\x01\xB2\x00\x90/' /Applications/Sublime\ Text.app/Contents/MacOS/sublime_text
      echo -e "${yellow}Signing Sublime Text...${reset}"
      sudo codesign --sign - --force --deep /Applications/Sublime\ Text.app
      echo -e "${green}Patching Successfully Done..${reset}"
    fi
    ;;
  2)
    echo  -e "You selected the second menu: ${yellow}Linux${reset}"
    echo -e "${yellow}sudo password is required${reset}"
    read -p "Are you sure you want to patch Sublime Text? (y/n): " confirm
    if [[ $confirm == "y" || $confirm == "Y" ]]; then
      echo -e "${yellow}Start Patching Sublime Text...${reset}"
      sudo cp /opt/sublime_text/sublime_text ./sublime_text.old
      sudo sed -i 's/\x80\x79\x05\x00\x0F\x94\xC2/\xC6\x41\x05\01\xB2\x00\x90/' /opt/sublime_text/sublime_text
      sudo cd /opt/sublime_text/
      chmod 755 sublime_text
      sudo chown root sublime_text
      sudo chgrp root sublime_text
      echo -e "${green}Patching Successfully Done..${reset}"
    fi
    ;;
  3)
    echo  -e "You selected the third menu: ${blue}Windows${reset}"
    read -p "Are you sure you want to patch Sublime Text? (y/n): " confirm
    if [[ $confirm == "y" || $confirm == "Y" ]]; then
    echo -e "* Install ${yellow}[HxD-Editor](https://mh-nexus.de/en/downloads.php?product=HxD20#)${reset} or visit ${yellow}https://hexed.it/${reset}"
    echo -e "  * Click File -> Open ->C:\Program Files\Sublime Text\sublime_text.exe"
    echo -e "  * Click Search -> Replace -> Hex Values -> 80 79 05 00 0F 94 C2 to C6 41 05 01 B2 00 90"
    echo -e "  * Save: Ctrl+S or save file (on hexed.it)"
    echo -e "  ${green}Successfully Done!${reset}"
    fi
    ;;
  4)
    echo -e "${green}Thank You!${reset}"
    exit 0
    ;;
  *)
    echo -e "${red}Invalid option. Exiting...${reset}"
    ;;
esac
