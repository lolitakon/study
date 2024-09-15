~~ #  前言
#brightdata是市面上（据说）第二大的老牌代理池服务商，特点是质量好，内部线路使用专线传输？但家宽ip十分昂贵
#不过datacenter价格极其便宜且对购买数量等使用没有限制

#  传输模式
#与传统代理池不太一样，传统代理池是：本机->对应代理机IP
#其datacenter是：本机->brightdata附件服务器/CDN(可能是专线传输)->对应代理机，内部使用专线那就避免了前者因为线路等种种原因使得到达代理机的延迟不稳定

#  缺点
#brightdata宣称支持socks5代理，实际上个人在使用其datacenter服务时发现并不支持直接的socks5，所谓直接是指你可以直接与brightdata服务器建立socks5连接，而实际
#上并不支持，brightdata只支持直接的http与https代理，并不支持直接socks5代理

#  如何使用socks5？
#brightdata官方给出的方法是使用它自家的代理工具luminati(又名proxy manger，github地址：https://github.com/luminati-io/luminati-proxy)
#使用luminati先与服务器建立http/https代理，然后在本地建立socks5代理从而实现间接的socks5代理（麻）

#  搭建过程
curl -L https://brightdata.com/static/lpm/luminati-proxy-latest-setup.sh | bash
#使用非全局代理，且作为守护进程（后台）启用luminati
proxy-manager --no-dropin --daemon
netstat -anp | grep 22999
#查看可以发现其监听0000:22999，此为它的管理配置端口，有条件（配置）可以使用RDP然后浏览器进入localhost:22999
#无条件也可以使用服务器公网ip/domain:22999进入，但该过程不安全！不安全！不安全！，其内容均为http明文传输而非https，建议用此方法后修改登录口令和api token
#用此方法前需先开放对应端口且将你的访问机公网IP加入白名单
lpm_whitelist_ip YOUR_IP
#而后根据页面提示操作即可

#  更安全的方法
#或许可以单纯使用命令与修改配置文件实现，配置文件路径在~/proxy_manager下，但官方和github项目没有给出其他配置方法

#  实现socks5
#按照指引搭建好http/https代理之后它就会在本地24000开启socks代理，使用xray等工具配置好router与outboud即可，另外个人更推荐搭建http代理
#其https代理使用的ca证书并非可信证书，需要将luminati公钥证书加入客户端可信根证书（不然一直弹不可信烦死你），可能不安全，实际上你访问的对应服务器基本已有
#一层tls,无需再套一层，多套一层的好处无非就是你的访问记录不会被截获（因为tls不会对头进行加密，个人认为无所谓），多套一层反而大幅影响上网质量没必要~~

# 目前brightdata已支持直接socks代理，端口为22228
