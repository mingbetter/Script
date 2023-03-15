#配置nginx
sudo apt-get -y install nginx
sudo systemctl status nginx
sudo systemctl restart nginx
#一键安装vpn
curl -fsSL https://git.io/vpnstart -o vpn.sh && sudo sh vpn.sh
#移动凭证
cp /root/vpnclient.mobileconfig /var/www/html
chmod 777 /var/www/html/vpnclient.mobileconfig
#打印地址
ipstr=""
ipstr=`curl ifconfig.me`
echo "描述文件如下："
echo ""
echo http://$ipstr/vpnclient.mobileconfig
echo ""
