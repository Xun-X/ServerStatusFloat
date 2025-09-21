#!/bin/bash

if ! grep -qE '^(Debian|Ubuntu)' /etc/issue 2>/dev/null && ! grep -qE '^(Debian|Ubuntu)' /etc/os-release 2>/dev/null; then
    echo "错误：此脚本仅适用于Debian或Ubuntu系统"
    exit 1
fi

get_architecture() {
    local arch
    arch=$(uname -m)
    case "$arch" in
        x86_64)
            echo "amd64"
            ;;
        i386|i686)
            echo "386"
            ;;
        armv7l|armv6l)
            echo "arm"
            ;;
        aarch64|arm64)
            echo "arm64"
            ;;
        *)
            echo "$arch"
            ;;
    esac
}

ARCH=$(get_architecture)
echo "检测到系统架构: $ARCH"

echo "更新软件包列表..."
sudo apt-get update

check_and_install() {
    local tool=$1
    local package=${2:-$tool}
    
    if ! command -v "$tool" &> /dev/null; then
        echo "安装 $tool..."
        sudo apt-get install -y "$package"
    else
        echo "$tool 已安装"
    fi
}

check_and_install curl

check_and_install wget

check_and_install 7z p7zip-full

check_and_install unzip

echo "所有必要工具已安装完成"
echo "系统架构变量: ARCH=$ARCH"



# 导出架构变量，以便后续使用
export ARCH

# 主菜单
show_main_menu() {
    echo "========================================"
    echo "          ServerStatus 客户端管理"
    echo "========================================"
    echo "1. 安装/配置探针客户端"
    echo "2. 卸载探针客户端"
    echo "3. 退出"
    echo "========================================"
}

# 安装配置流程
install_probe() {
    show_message "info" "开始安装并配置探针客户端..."
    
    # 询问服务器地址
    while true; do
        read -p "请输入服务器地址或IP地址: " C_IPorDomain
        if [ -n "$C_IPorDomain" ]; then
            break
        else
            show_message "warning" "服务器地址不能为空，请重新输入！"
        fi
    done
    
    # 询问端口
    while true; do
        read -p "请输入服务器数据通讯端口: " C_Port
        if [[ "$C_Port" =~ ^[0-9]+$ ]] && [ "$C_Port" -ge 1 ] && [ "$C_Port" -le 65535 ]; then
            break
        else
            show_message "warning" "端口必须是1-65535之间的数字，请重新输入！"
        fi
    done
    
    # 询问用户名
    while true; do
        read -p "请输入加入服务器的用户名: " C_Username
        if [ -n "$C_Username" ]; then
            break
        else
            show_message "warning" "用户名不能为空，请重新输入！"
        fi
    done
    
    # 询问密码
    while true; do
        read -s -p "请输入加入服务器的密码: " C_Password
        echo
        if [ -n "$C_Password" ]; then
            break
        else
            show_message "warning" "密码不能为空，请重新输入！"
        fi
    done
    
    # 确认信息
    echo
    show_message "info" "请确认配置信息："
    echo "服务器地址: $C_IPorDomain"
    echo "通讯端口: $C_Port"
    echo "用户名: $C_Username"
    echo "密码: ******"
    echo
    
    read -p "是否确认以上配置？(y/N): " confirm
    if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
        show_message "warning" "已取消配置"
        return 1
    fi
    

curl -L https://github.com/Xun-X/ServerStatusFloat/raw/refs/heads/main/download/status-client_v1.1.14.7z -o /tmp/status-client_v1.1.14.7z
7z x status-client_v1.1.14.7z -aoa
mkdir /home/status-client
mv /tmp/status-client_v1.1.14_linux_$ARCH mkdir /home/status-client/status-client
chmod +x /home/status-client/status-client
rm -rf /tmp/status-client_v1.1.14_linux_386
rm -rf /tmp/status-client_v1.1.14_linux_amd64
rm -rf /tmp/status-client_v1.1.14_linux_arm
rm -rf /tmp/status-client_v1.1.14_linux_arm64

tee /etc/systemd/system/status-client.service <<EOF
[Unit]
Description=Status-client Service
After=network.target

[Service]
ExecStart=/home/status-client/status-client -dsn="$C_Username:$C_Password@$C_IPorDomain:$C_Port"
Restart=on-failure
User=root

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable status-client
sudo systemctl start status-client


    # 导出变量，方便后续使用
    export C_IPorDomain
    export C_Port
    export C_Username
    export C_Password
    
    show_message "success" "ServerStatus探针客户端安装配置完成！"
}

# 卸载流程
uninstall_probe() {
    show_message "warning" "开始卸载探针客户端..."
    
    read -p "确定要卸载探针客户端吗？(y/N): " confirm
    if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
        show_message "info" "已取消卸载"
        return 1
    fi
    
    # 执行卸载操作
    show_message "info" "停止服务..."
    sudo systemctl stop status-client 2>/dev/null
    
    show_message "info" "禁用服务..."
    sudo systemctl disable status-client 2>/dev/null
    
    show_message "info" "删除服务文件..."
    sudo rm -rf /etc/systemd/system/status-client.service 2>/dev/null
    
    show_message "info" "重新加载系统服务..."
    sudo systemctl daemon-reload
    
    show_message "info" "删除程序文件..."
    sudo rm -rf /home/status-client 2>/dev/null
    
    show_message "success" "ServerStatus-Client 卸载完成，感谢您的使用！"
}

# 主循环
main() {
    while true; do
        show_main_menu
        
        read -p "请选择操作 (1-3): " choice
        
        case $choice in
            1)
                install_probe
                ;;
            2)
                uninstall_probe
                ;;
            3)
                show_message "info" "感谢使用，再见！"
                exit 0
                ;;
            *)
                show_message "error" "无效选择，请重新输入！"
                ;;
        esac
        
        echo
        read -p "按回车键继续..."
        clear
    done
}

# 检查是否以root权限运行
if [ "$EUID" -ne 0 ]; then
    show_message "warning" "建议使用sudo权限运行此脚本以获得最佳体验"
    read -p "是否继续？(y/N): " continue_as_user
    if [[ ! "$continue_as_user" =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# 启动主程序
clear
main

