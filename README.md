# ServerStatusW
Windows上显示一个半透明的飘浮窗，实时监看服务器状态(ServerStatus探针)

##### 效果展示：
![](https://raw.githubusercontent.com/Xun-X/ServerStatusW/main/Screenshots3.png)

##### 程序说明：
本程序是读取[ServerStatus探针]服务端WEB数据用于飘浮窗显示服务器状态，所以服务器需要安装[ServerStatus探针]

##### 设置简单说明：
例：[ServerStatus探针]访问地址是：```http://tanzhen.hostname.com:808```
如图：
![](https://raw.githubusercontent.com/Xun-X/ServerStatusW/main/Screenshots1.png)

##### 参考如下设置即可：
![](https://raw.githubusercontent.com/Xun-X/ServerStatusW/main/Screenshots2.png)

特别说明：[设备名称配置]填入的名称与WEB上对应的[节点名]相同即可

##### 小窗模式：
![](https://raw.githubusercontent.com/Xun-X/ServerStatusW/main/Screenshots3.png)

##### 大窗模式：
![](https://raw.githubusercontent.com/Xun-X/ServerStatusW/main/Screenshots4.png)

#### ServerStatus探针 服务端 安装：
```
wget -N --no-check-certificate https://raw.githubusercontent.com/iiiiiii1/doubi/master/caddy_install.sh && chmod +x caddy_install.sh && bash caddy_install.sh
wget https://raw.githubusercontent.com/cokemine/ServerStatus-Hotaru/master/status.sh
bash status.sh s
```

#### ServerStatus探针 客户端 安装：
```
wget -N --no-check-certificate https://raw.githubusercontent.com/iiiiiii1/doubi/master/caddy_install.sh && chmod +x caddy_install.sh && bash caddy_install.sh
wget https://raw.githubusercontent.com/cokemine/ServerStatus-Hotaru/master/status.sh
bash status.sh c
```
#### 下载地址：
蓝奏云下载：[https://www.lanzouw.com/iq9Ty1x5rxoj](https://www.lanzouw.com/iq9Ty1x5rxoj "蓝奏云下载")

这是成品发布版本，就不公开源码了(小白也看不懂)冷门语言编写的。再加上做得很粗糙，就不放出来显摆(丟人現眼)了

本程序无后门，无上传数据功能，启动会检查是否有新版本升级，此外无其他联网功能。

## 关于 [ 被害妄想症 ] 的完美解决方案
方案1：`关闭这个页面(不开源的都是病毒见不得人，即使开源也看不懂(阴谋论者用得正爽的笑了2333))`

方案2：`找其他人帮你试 “毒”`

方案3：`求助其他大神帮您反编译及分析`

方案4：`上传到 http://habo.qq.com 进行分析`

方案5：`上传到 http://www.virscan.org 在线病毒扫描（有报毒就别用了，有人想害你）`
