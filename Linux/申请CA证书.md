# 安装acme

curl https://get.acme.sh | sh

## 安装socat：

apt install socat

## 添加软链接：

ln -s  /root/.acme.sh/acme.sh /usr/local/bin/acme.sh

# 申请证书

## 切换CA机构： 

acme.sh --set-default-ca --server letsencrypt

# 发起申请

acme.sh  --issue -d 替换为你的域名 --standalone -k ec-256

## 安装证书： 

acme.sh --installcert -d 替换为你的域名 --ecc  --key-file   PATH   --fullchain-file PATH

# 注意/补充

使用V6需添加--listen-v6

申请通配符证书需要使用dns模式，示例如下

acme.sh  --issue -d DOMAIN --dns --yes-I-know-dns-manual-mode-enough-go-ahead-please

acme.sh  --issue -d DOMAIN --dns --yes-I-know-dns-manual-mode-enough-go-ahead-please --renew
