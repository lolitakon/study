# 将文件用作swap分区

`fallocate -l 1G swapfile`

`chmod 600 swapfile`

`mkswap swapfile`

`echo '$绝对路径 none swap sw 0 0' | sudo tee -a /etc/fstab`
