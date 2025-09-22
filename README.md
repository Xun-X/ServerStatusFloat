# ServerStatusFloat
[![Xun-X](https://img.shields.io/static/v1?label=作者&message=Xun-X&color=F36CB0)](https://github.com/Xun-X/ServerStatusFloat)
[![Xun-X](https://img.shields.io/static/v1?label=特别感谢&message=cokemine&color=97C40F)](https://github.com/cokemine/ServerStatus-Hotaru)
[![Xun-X](https://img.shields.io/static/v1?label=特别感谢&message=caddy&color=1081C2)](https://github.com/caddyserver/caddy)
[![Xun-X](https://img.shields.io/static/v1?label=软件特点&message=便携、简易&color=48C21A)](https://github.com/Xun-X/ServerStatusFloat)
[![Xun-X](https://img.shields.io/static/v1?label=获取方式&message=点击下载&color=F48041)](https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/ServerStatusFloat.zip)
[![Xun-X](https://img.shields.io/static/v1?label=兼容版本&message=v0.4.X&color=F7F720)](https://github.com/Xun-X/ServerStatusFloat#serverstatus-hotaru-%E6%8E%A2%E9%92%88%E4%B8%BB%E6%8E%A7%E7%AB%AFdebianubuntucentos-%E4%B8%80%E9%94%AE%E5%AE%89%E8%A3%85%E8%84%9A%E6%9C%AC%E6%9C%8D%E5%8A%A1%E7%AB%AF)

探针悬浮窗，Windows显示服务器监视悬浮窗，实时监看服务器状态 (基于ServerStatus-Hotaru探针)

关键词：`ServerStatus 探针` `ServerStatus-Hotaru` `悬浮监视窗` `ServerStatus 漂浮/悬浮窗` `探针 一键搭建`

##### 让我们一起共建庞大的监控室大爷团队，时刻掌握小鸡状态！

##### 注意：因为人懒，本项目不跟随官方最新版本更新，监控悬浮窗基于 ServerStatus-Hotaru v0.4.X 版本开发

探针监视悬浮窗和对应版本探针服务端(主控)/客户端(被控)也都有对应的版本下载【[一键脚本/下载 点击](https://github.com/Xun-X/ServerStatusFloat#%E6%90%AD%E5%BB%BA%E4%B8%BB%E6%8E%A7%E7%AB%AF%E4%B8%8B%E8%BD%BD%E6%82%AC%E6%B5%AE%E7%AA%97%E4%B8%8B%E8%BD%BD%E6%8E%A2%E9%92%88)】

## 效果展示：
#### 详细主题 全显示
![](https://raw.githubusercontent.com/Xun-X/ServerStatusFloat/refs/heads/main/image/inages_1.png)

#### 详细主题 单个显示
![](https://raw.githubusercontent.com/Xun-X/ServerStatusFloat/refs/heads/main/image/inages_2.png)

#### 简略小窗
![](https://raw.githubusercontent.com/Xun-X/ServerStatusFloat/refs/heads/main/image/inages_3.png)

#### 简略大窗
![](https://raw.githubusercontent.com/Xun-X/ServerStatusFloat/refs/heads/main/image/inages_4.png)



## 程序说明：
本程序是读取搭建好的[ServerStatus-Hotaru探针]服务端WEB端数据经过处理后用于飘浮窗显示服务器状态，所以服

务器需要安装 [ServerStatus探针] 主控服务端程序

主程序启动后会在所在的目录下创建一个抓取服务器数据的EXE程序并运行，抓取到数据会发送到主程序的[49233]端口

主程序收到数据会处理并显示出服务器实时的信息，抓取间隔时间可在设置中配置，建议2秒或以上

##### 设置简单说明：
例：[探针]访问地址是：```http://tanzhen.hostname.com:808```

如图：
![](https://raw.githubusercontent.com/Xun-X/ServerStatusFloat/refs/heads/main/image/inages_5.png)

##### 参考如下设置即可：
![](https://raw.githubusercontent.com/Xun-X/ServerStatusFloat/refs/heads/main/image/inages_6.png)

特别说明：
```
1、 [设备名称配置] 填入的 [内容] 与WEB上对应的 [服务器名称] 相同即可 
2、 服务器WEB地址建议用不套cdn的地址，以免抓取数据不稳定(直连更不稳的除外)
```


#### 特别说明
因为人比较懒，本项目不跟随原作者版本进行更新，基于ServerStatus v0.4.X制作，需要实现监看效果首先需有一台Linux服务器搭建主控端

再把需要被监控的服务器装上探针，通过本程序配置好对应的服务器主控端的WEB，以及配置好需要显示的服务器信息即可方便地监看服务器状态


#### 更新历史
更新版本(v1.8)：
```
软件已更名为【ServerStatusFloat】，原本使用哪吒v0养老版本的，但是近期发现v0管理后台已经无法添加删除服务器了，v1又过于花里胡哨，

最终还是决定使用早期使用的ServerStatus探针，现有的界面和功能也是在之前做的【Nezha-Server-Status】直接改的，没有太多优化，所以

在启动速度上确实是慢了不少，不过启动慢不影响正常使用，也就直接发布了
```

.
## 搭建主控端/下载悬浮窗/下载探针

.

各端【作用/功能】说明

探针主控端：一台服务器负责汇集所有服务器数据并提供WEB访问页面（改删添探针可通过bash ./status.sh s 进行配置

　　也可编辑/usr/local/ServerStatus/server/config.json 调整服务器顺序，然后 bash ./status.sh s 重启主控即可）

探针客户端：可以把手上所有的服务器/电脑都安装上客户端，并配置好主控端服务器的IP地址和加入主控端的参数

　　即可把数据上传到主控端，在主控端即可方便查看已加入的服务器状态

探针监控悬浮窗：读取探针主控端WEB的数据，实时在悬浮窗上显示服务器状态，无需访问主控的WEB网页就能查看

　　服务器状态


#### 其中探针客户端提供3个版本

[探针客户端版本1](https://github.com/xun-X/serverStatusFloat#serverstatus-hotaru-%E6%8E%A2%E9%92%88%E5%AE%A2%E6%88%B7%E7%AB%AFdebianubuntucentos-%E4%B8%80%E9%94%AE%E5%AE%89%E8%A3%85%E8%84%9A%E6%9C%AC%E5%AE%A2%E6%88%B7%E7%AB%AF)（debian/ubuntu/centos）：

ServerStatus-Hotaru原版客户端，需要安装和服务端一样的caddy依赖


[探针客户端版本2](https://github.com/xun-X/serverStatusFloat#status-client-%E6%8E%A2%E9%92%88%E5%AE%A2%E6%88%B7%E7%AB%AFdebianubuntu-%E4%B8%80%E9%94%AE%E5%AE%89%E8%A3%85%E8%84%9A%E6%9C%AC%E5%AE%A2%E6%88%B7%E7%AB%AF-go%E8%AF%AD%E8%A8%80%E7%BC%96%E5%86%99-%E6%8E%A8%E8%8D%90%E4%BD%BF%E7%94%A8%E6%97%A0%E9%9C%80%E5%AE%89%E8%A3%85%E4%BE%9D%E8%B5%96%E5%8D%95%E7%A8%8B%E5%BA%8F)（debian）：

ServerStatus-Hotaru原作者通过GO语言编译的单程序版本，我只做了debian一键安装脚本，配置更简单步骤更少，很适合不想
要占用太多服务器资源和系统环境使用，强烈推荐

[探针客户端版本3](https://github.com/xun-X/serverStatusFloat#status-windows-%E6%8E%A2%E9%92%88%E5%AE%A2%E6%88%B7%E7%AB%AFwindows%E5%8F%AF%E8%A7%86%E5%8C%96%E9%85%8D%E7%BD%AE%E6%97%A0%E9%9C%80%E6%95%B2%E6%8C%87%E4%BB%A4-github%E4%B8%8B%E8%BD%BD)（Windows）：

也是使用原作者编译的GO语言编译的Windows版本，我打包制作成单EXE程序，简单可视化的就可以配置好Windows操作系统的服务器/电脑向主控上传机器状态

·

#### ServerStatus-Hotaru 探针主控端(debian/ubuntu/centos) 一键安装脚本(服务端)：
```
wget -N --no-check-certificate https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/caddy_install.sh && chmod +x caddy_install.sh && bash caddy_install.sh
wget https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/status.sh
bash status.sh s
```

#### ServerStatus-Hotaru 探针客户端(debian/ubuntu/centos) 一键安装脚本(客户端)：
```
wget -N --no-check-certificate https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/caddy_install.sh && chmod +x caddy_install.sh && bash caddy_install.sh
wget https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/status.sh
bash status.sh c
```

#### Status-Client 探针客户端(debian/ubuntu) 一键安装脚本(客户端-GO语言编写) ★推荐使用,无需安装依赖,单程序：
```
wget -N --no-check-certificate https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/status-client.sh && chmod +x status-client.sh && bash status-client.sh
```

#### Status-Windows 探针客户端(Windows)（可视化配置，无需敲指令） GITHUB下载：
[https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/StatusWindows_amd64.7z](https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/StatusWindows_amd64.7z "GITHUB下载")

#### ServerStatus Windows 探针监控悬浮窗 GITHUB下载：
[https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/ServerStatusFloat.zip](https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/ServerStatusFloat.zip "GITHUB下载")

.


Windows版本的探针/悬浮窗都是编译发布版本，就不公开源码了(小白也看不懂)非主流语言编写的。再加上做得很粗糙，

就不放出来显摆(丟人現眼)了，程序无后门，无上传数据功能，启动会检查是否有新版本升级，此外无其他联网功能。

### 关于 [ 被害妄想症 ] 的完美解决方案
方案1：`关闭这个页面(不开源的都是病毒见不得人，即使开源也看不懂`

方案2：`找其他人帮你试 “毒”`

方案3：`求助其他大神帮您反编译及分析`

方案4：`上传到 http://habo.qq.com 进行分析`

方案5：`上传到 http://www.virscan.org 在线病毒扫描（有报毒就别用了，有人想害你）`
