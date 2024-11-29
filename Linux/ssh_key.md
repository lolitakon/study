# 生成ssh公私钥
`ssh-keygen -t ed25519`

`cd ~/.ssh/`

`chmod 600 id_ed25519.pub`

`cp id_ed25519.pub authorized_keys`

`rm -rf id_ed25519.pub`
