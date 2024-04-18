#**基于LSTM的恶意域名检测系统**

##**说明文档**

###**基于HTTPS的API**

本API基于Django与Nginx实现，能有效检测DGA恶意域名，请求路径为api，支持get与post请求方式

####**GET（推荐）**

使用 GET 方法可以减少延迟，因为它可以被更有效地缓存。GET 请求必须具有 ?domain= 查询参数

####**POST**

本系统同样支持POST方法，参数同为domain

####**示例**

服务器域名为api.example.com

**get方式**：查询www.example.com是否为DGA域名，请求应为`https://api.example.com/api?domain=www.example.com`

**post方式**：<请求头>`domain=api.example.com`