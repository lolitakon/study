# 生成ssh公私钥
ssh-keygen -t ed25519
cd ~/.ssh/
cp id_ed25519.pub authorized_keys
rm -rf id_ed25519.pub
