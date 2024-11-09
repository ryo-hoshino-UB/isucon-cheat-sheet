# nginxのlogをjson出力にする設定をした後
sudo nginx -t
sudo systemctl daemon-reload
# alp install
wget https://github.com/tkuchiki/alp/releases/download/v1.0.21/alp_linux_arm64.zip
unzip alp_linux_arm64.zip
sudo mv alp /usr/local/bin/
sudo chmod +x /usr/local/bin/alp
alp --version
sudo rm alp_linux_arm64.zip
sudo rm /var/log/nginx/access.log
sudo systemctl reload nginx
cat /var/log/nginx/access.log | alp json

# pt-query-digester, dstat install
sudo apt update
sudo apt install apache2-utils -y
sudo apt install dstat -y
sudo apt install percona-toolkit -y
git clone https://github.com/kazeburo/query-digester.git
cd query-digester
sudo install query-digester /usr/local/bin

# applicationをrubyからgoに変更
sudo systemctl stop isu-ruby
sudo systemctl disable isu-ruby
sudo systemctl start isu-go
sudo systemctl enable isu-go
