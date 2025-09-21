# ServerStatusFloat
[![Xun-X](https://img.shields.io/static/v1?label=作者&message=Xun-X&color=F36CB0)](https://github.com/Xun-X/ServerStatusFloat)
[![Xun-X](https://img.shields.io/static/v1?label=特别感谢&message=cokemine&color=97C40F)](https://github.com/cokemine/ServerStatus-Hotaru)
[![Xun-X](https://img.shields.io/static/v1?label=软件特点&message=便携、简易&color=48C21A)](https://github.com/Xun-X/ServerStatusFloat)
[![Xun-X](https://img.shields.io/static/v1?label=软件性质&message=免费、非开源&color=1081C2)](https://github.com/Xun-X/ServerStatusFloat)
[![Xun-X](https://img.shields.io/static/v1?label=获取方式&message=点击下载&color=F48041)](https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/ServerStatusFloat.zip)

探针漂浮窗，Windows显示服务器监视飘浮窗，实时监看服务器状态 (基于ServerStatus-Hotaru探针)

关键词：`ServerStatus 探针漂浮窗` `ServerStatus-Hotaru 探针 漂浮窗` `ServerStatus 探针` `ServerStatus Windows 监视窗` `ServerStatus 漂浮窗`

##### 让我们一起共建庞大的监控室大爷团队，时刻掌握小鸡状态！

##### 注意：因为人懒，本项目不跟随官方最新版本更新，基于v0.4.X 版本开发，安装探针在底部有【一键脚本/说明】

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
本程序是读取搭建好的[ServerStatus-Hotaru探针]服务端WEB端数据经过处理后用于飘浮窗显示服务器状态，所以服务器

需要安装 [ServerStatus探针] 主控服务端程序

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
软件已更名为【ServerStatusFloat】，原本使用哪吒v0养老版本的，但是近期发现v0管理后台已经无法添加删除服务器了，v1又过于花里胡哨，最终还是决定

使用早期使用的ServerStatus探针，现有的界面和功能也是在之前做的【Nezha-Server-Status】直接改的，没有太多优化，所以在启动速度上确实是慢了不少，不过启动慢

不影响正常使用，也就直接发布了
```

.
## 下载/搭建主控端
.

#### ServerStatus-Hotaru 探针主控端(debian/ubuntu/centos) 一键安装脚本(服务端)：
```
wget -N --no-check-certificate https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/caddy_install.sh && chmod +x caddy_install.sh && bash caddy_install.sh
wget https://raw.githubusercontent.com/cokemine/ServerStatus-Hotaru/master/status.sh
bash status.sh s
```

#### ServerStatus-Hotaru 探针客户端(debian/ubuntu/centos) 一键安装脚本(客户端)：
```
wget -N --no-check-certificate https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/caddy_install.sh && chmod +x caddy_install.sh && bash caddy_install.sh
wget https://raw.githubusercontent.com/cokemine/ServerStatus-Hotaru/master/status.sh
bash status.sh c
```

#### Status-Client 探针客户端(debian/ubuntu) 一键安装脚本(客户端-GO语言编写) ★推荐使用,无需安装依赖,单程序：
```
wget -N --no-check-certificate https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/status-client.sh && chmod +x status-client.sh && bash status-client.sh
```

#### Status-Windows 探针客户端(Windows)（可视化配置，无需敲指令） GITHUB下载：
[https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/StatusWindows_amd64.7z](https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/StatusWindows_amd64.7z "GITHUB下载")

#### ServerStatus Windows 监控漂浮窗 GITHUB下载：
[https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/ServerStatusFloat.zip](https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/ServerStatusFloat.zip "GITHUB下载")

.


Windows版本的探针/漂浮窗都是编译发布版本，就不公开源码了(小白也看不懂)非主流语言编写的。再加上做得很粗糙，

就不放出来显摆(丟人現眼)了，程序无后门，无上传数据功能，启动会检查是否有新版本升级，此外无其他联网功能。

### 关于 [ 被害妄想症 ] 的完美解决方案
方案1：`关闭这个页面(不开源的都是病毒见不得人，即使开源也看不懂`

方案2：`找其他人帮你试 “毒”`

方案3：`求助其他大神帮您反编译及分析`

方案4：`上传到 http://habo.qq.com 进行分析`

方案5：`上传到 http://www.virscan.org 在线病毒扫描（有报毒就别用了，有人想害你）`
