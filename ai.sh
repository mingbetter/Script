#一键安装vpn
curl -fsSL https://git.io/vpnstart -o vpn.sh && sudo sh vpn.sh
#配置nginx
sudo apt-get -yqq install nginx
sudo systemctl status nginx
sudo systemctl restart nginx
#移动凭证
cp /root/vpnclient.mobileconfig /var/www/html
chmod 777 /var/www/html/vpnclient.mobileconfig
#打印地址
ipstr=""
ipstr=`curl ifconfig.me`
address="http://$ipstr/vpnclient.mobileconfig"
curl https://api.day.app/cMFF5VGjf2ocuttGwE22m6/VPN凭证地址?url=$address
echo "描述文件如下："
echo ""
echo $address
echo ""
