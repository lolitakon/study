#笔者最近在学习Linux，在使用Ubuntu的cn仓库拉取的v2ray时出现异常错误，一直无法正常启动。于是改用官方的shell脚本安装，但是被墙了一直无法正常安装，且图形化界面中设置的代理无法被curl使用
#于是找到类似教程，故写入此处

#在~/.bashrc中设置http_proxy的全局变量
#具体代码：
vim ~/.bashrc
http_proxy="ip/hostname:port"
export http_proxy
#保存退出(:wq)
source  ~/.bashrc
#使变量及时生效
curl www.google.com
#测试能否绕过gfw  成功
