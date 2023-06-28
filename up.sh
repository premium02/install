#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

echo -e "${GREEN} Mengecek Pembaruan "
echo -e "${YELLOW}Siap Memperbahrui"

#hapus menu
rm -rf menu
rm -rf up
#download menu
wget -O menu "https://raw.githubusercontent.com/wingvpn/v4/main/menu/menu.sh"
wget -O up "https://raw.githubusercontent.com/wingvpn/v4/main/up.sh"
wget -O user-lock "https://raw.githubusercontent.com/wingvpn/v4/main/ssh/user-lock.sh"
wget -O user-unlock "https://raw.githubusercontent.com/wingvpn/v4/main/ssh/user-unlock.sh"
#kata perintah nya
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/wingvpn/v4/main/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/up "https://raw.githubusercontent.com/wingvpn/v4/main/up.sh" && chmod +x /usr/bin/up
wget -q -O /usr/bin/user-lock "https://raw.githubusercontent.com/wingvpn/v4/main/ssh/user-lock.sh" && chmod +x /usr/bin/user-lock
wget -q -O /usr/bin/user-unlock "https://raw.githubusercontent.com/wingvpn/v4/main/ssh/user-unlock.sh" && chmod +x /usr/bin/user-unlock

echo -e "${GREEN} [INFO] Update Successfully"
sleep 2
exit
