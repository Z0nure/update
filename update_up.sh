#INSTALL UPDATE 
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
colornow=$(cat /etc/phantomshield/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m" 
COLOR1="$(cat /etc/phantomshield/phantomshield/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/phantomshield/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"                    
###########- END COLOR CODE -##########

echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}    • DOWNLOAD & INSTALL UPDATE •              ${NC} $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " [INFO] Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/update_up "https://raw.githubusercontent.com/Z0nure/update/main/update_up.sh" && chmod +x /usr/bin/update_up
wget -q -O /usr/bin/crtxray "https://raw.githubusercontent.com/Z0nure/beta/main/xray/crtxray.sh" && chmod +x /usr/bin/crtxray
wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-ss.sh" && chmod +x /usr/bin/menu-ss
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-vmess.sh" && chmod +x /usr/bin/menu-vmess
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-vless.sh" && chmod +x /usr/bin/menu-vless
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-trojan.sh" && chmod +x /usr/bin/menu-trojan
wget -q -O /usr/bin/menu-bot "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-bot.sh" && chmod +x /usr/bin/menu-bot
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-ssh.sh" && chmod +x /usr/bin/menu-ssh
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-set.sh" && chmod +x /usr/bin/menu-set
wget -q -O /usr/bin/menu-theme "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-theme.sh" && chmod +x /usr/bin/menu-theme
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-backup.sh" && chmod +x /usr/bin/menu-backup
wget -q -O /usr/bin/menu-ip "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-ip.sh" && chmod +x /usr/bin/menu-ip
wget -q -O /usr/bin/menu-tor "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-tor.sh" && chmod +x /usr/bin/menu-tor
wget -q -O /usr/bin/autoboot "https://raw.githubusercontent.com/Z0nure/beta/main/update/autoboot.sh" && chmod +x /usr/bin/autoboot
wget -q -O /usr/bin/menu-tcp "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-tcp.sh" && chmod +x /usr/bin/menu-tcp
wget -q -O /usr/bin/rebootvps "https://raw.githubusercontent.com/Z0nure/beta/main/corn/rebootvps.sh" && chmod +x /usr/bin/rebootvps
wget -q -O /usr/bin/menu-dns "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-dns.sh" && chmod +x /usr/bin/menu-dns
wget -q -O /usr/bin/info "https://raw.githubusercontent.com/Z0nure/beta/main/update/info.sh" && chmod +x /usr/bin/info
wget -q -O /usr/bin/mspeed "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-speedtest.sh" && chmod +x /usr/bin/mspeed
wget -q -O /usr/bin/mbandwith "https://raw.githubusercontent.com/Z0nure/beta/main/update/menu-bandwith.sh" && chmod +x /usr/bin/mbandwith
wget -O install-ss-plugin "https://raw.githubusercontent.com/Z0nure/beta/main/shadowsocks-plugin/install-ss-plugin.sh" && chmod +x /usr/bin/install-ss-plugin
wget -q -O /usr/bin/ssmenu "https://raw.githubusercontent.com/Z0nure/beta/main/update/ssmenu.sh" && chmod +x /usr/bin/ssmenu
wget -q -O /usr/bin/addsstp "https://raw.githubusercontent.com/Z0nure/beta/main/sstp/addsstp.sh" && chmod +x /usr/bin/addsstp
wget -q -O /usr/bin/ceksstp "https://raw.githubusercontent.com/Z0nure/beta/main/sstp/ceksstp.sh" && chmod +x /usr/bin/ceksstp
wget -q -O /usr/bin/delsstp "https://raw.githubusercontent.com/Z0nure/beta/main/sstp/delsstp.sh" && chmod +x /usr/bin/delsstp
wget -q -O /usr/bin/renewsstp "https://raw.githubusercontent.com/Z0nure/beta/main/sstp/renewsstp.sh" && chmod +x /usr/bin/renewsstp
wget -q -O /usr/bin/m-tcp "https://raw.githubusercontent.com/Z0nure/beta/main/update/tcp.sh" && chmod +x /usr/bin/m-tcp
echo -e " [INFO] Update Successfully"
sleep 2
exit
