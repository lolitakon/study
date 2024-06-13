#安装acme：
curl https://get.acme.sh | sh
#安装socat：
apt install socat
#添加软链接：
ln -s  /root/.acme.sh/acme.sh /usr/local/bin/acme.sh
#切换CA机构： 
acme.sh --set-default-ca --server letsencrypt
#申请证书： 
acme.sh  --issue -d 替换为你的域名 --standalone -k ec-256
#申请V6需添加--listen-v6
#安装证书： 
acme.sh --installcert -d 替换为你的域名 --ecc  --key-file   PATH   --fullchain-file PATH
