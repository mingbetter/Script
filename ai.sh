#一键安装vpn
# curl -fsSL https://git.io/vpnstart -o vpn.sh && sudo sh vpn.sh
# #配置nginx
# sudo apt-get -y install nginx
# sudo systemctl status nginx
# sudo ufw allow 'Nginx Full'
# sudo systemctl restart nginx
# #移动
cp /root/vpnclient.mobileconfig /var/www/html
chmod 777 /var/www/html/vpnclient.mobileconfig
ipstr=""
ipstr=`curl ifconfig.me`
echo “http://$ipstr/vpnclient.mobileconfig\n”