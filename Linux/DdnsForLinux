#使用了该大佬的项目https://github.com/NewFuture/DDNS
#二进制文件，直接运行即可，简单配置config.json然后运行ddns二进制文件即可
#配合使用crond即可实现自动更新，配置文件说明参考原项目

wget -p /你指定的存放目录/ https://github.com/NewFuture/DDNS/releases/download/v2.11.5/ddns
#下载完成后修改该文件执行权限
chmod ugo+x /目录/ddns
/目录/ddns
#直接运行该二进制文件即可，该二进制文件会自动识别你当前`pwd`路径下是否有config.json，没有则自动生成
#(个人十分主观的认为)此乃bug，它并非检测二进制文件所在目录，而是检测你当前用户当前所在目录
#config.json的填写参考原项目,填写测试完毕之后即可配置crond
#可直接使用原项目脚本curl -sSL https://github.com/NewFuture/DDNS/releases/download/v2.11.5/create-task.sh | bash
#笔者这里选择自己配置
crontab -e
* */8 * * * /目录/ddns -c /目录/config.json
#这里-c一定要带，后带你的config.json所在位置，否则该二进制文件只能找到你当前用户目录下
#意为每8小时执行检测一次，同理可在配一个开机检测
@reboot 60; /目录/ddns -c /目录/config.json
#这里笔者也是google搜罗来的用法，意为开机60s后执行该计划
:wq
#enjoy~
