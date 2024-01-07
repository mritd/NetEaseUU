# NetEaseUU

> 这是一个专为网易 UU 加速器构建的 OpenWrt 版本, 该系统最终作为单臂路由运行在虚拟机内并未内网设备提供游戏加速.

## VM 安装

提前创建好 VM 虚拟机, 虚拟机要求如下:

- 1、只需要分配一个网卡
- 2、EFI 版本需要关闭 UEFI 安全引导
- 3、不需要额外的磁盘

然后从 Release 页面下载最新的系统, 导入到 ESXi/PVE 中并启动.

## 插件配置

系统默认启动后无密码、无 LUCI, 启动系统会自动从主路由获取 IP 地址(DHCP),

**直接在命令行运行 `uu_install` 命令即可在线安装插件, 最后手机将网关指向当前 VM IP 初始化即可.**
