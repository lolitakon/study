# 中文乱码问题
## 原因
一般是由于系统没有启用UTF-8，或者说UTF-8的中文部分造成的
## 解决
`sudo dpkg-reconfigure locales`

在界面中勾选（空格键）你要用的 UTF-8，比如：

en_US.UTF-8 UTF-8

zh_CN.UTF-8 UTF-8
