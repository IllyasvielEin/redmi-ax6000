# 红米 AX6000 OpenWrt 固件

这里是红米ax6000-128M-U-boot固件，基于immortalwrt-24.10，自带adblock,passwall,uugamebooster,alist，可修改代码增加自己需要的插件，直接fork即可云编译，毫无保留。

## 默认配置

- **默认地址**: `192.168.6.1`
- 需要修改的自行在 `diy-part2.sh` 文件第二十行里修改

## 预装功能

- AdBlock (广告拦截)
- Passwall (科学上网)
- UU Game Booster (网易UU加速器)
- Alist (网盘挂载)

## 云编译使用方法

1. Fork 本仓库
2. 在 Action 后，将 `SSH connection to Actions` 连接选项输入 `true`
3. 运行 `run workflow`
4. 等待出现 SSH 链接，并点击打开新页面
5. 进入 SSH 连接页面后按 `Ctrl+C`
6. 输入以下命令进入图形选择界面：
   ```bash
   cd openwrt && make menuconfig
   ```
7. 选择所需插件后保存退出（`LuCI ---> Applications` 选择所需的插件）
8. 退出后输入 `Ctrl+D`
9. ACTION 会自动开始后面的操作
