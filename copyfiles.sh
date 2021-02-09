
cp pptpd.conf /etc/pptpd.conf
cp options.pptpd /etc/ppp/options.pptpd
cp chap-secrets /etc/ppp/chap-secrets
cp ip-up /etc/ppp/ip-up

cp /etc/sysctl.conf
sysctl -p

#先修改公网ip，再执行
iptables -t nat -A POSTROUTING -s 192.168.0.0/24 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 192.168.0.0/255.255.255.0 -j SNAT --to-source 47.243.21.54

#要用这个而不是centos的
sudo iptables-save

systemctl restart pptpd

#centos这个，没安装iptables之前走不通
#systemctl start iptables

#执行如下命令，设置pptpd和iptables自启动。自启动命令，没安装iptables之前走不通
#chkconfig --add pptpd
#chkconfig pptpd on
#chkconfig --add iptables
#chkconfig iptables on