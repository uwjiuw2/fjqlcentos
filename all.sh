cd /
mkdir wuji
cd wuji
yum install -y git
git clone https://github.com/uwjiuw2/fjqlcentos
cd fjqlcentos
chmod +x fjql_autodeploy.sh
./fjql_autodeploy.sh


#以下是获取ip的方法
#https://www.v2ex.com/t/128007
#我收罗过一些获取出口IP的方法，但哪有自己搞的心里爽啊！
#external_addr=$(dig +short myip.opendns.com @resolver1.opendns.com)
#external_addr=$(curl http://ifconfig.me 2> /dev/null )
#external_addr=$(curl ip.appspot.com)
#external_addr=$(curl icanhazip.com)
#external_addr=$(curl -s http://checkip.dyndns.org/ | grep -o "[[:digit:].]\+")