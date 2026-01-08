#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# ===========================================
# 1. 设置默认 IP 为 192.168.6.1
# ===========================================
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# ===========================================
# 2. 设置默认主机名为 Ruby6000
# ===========================================
sed -i 's/ImmortalWrt/Ruby6000/g' package/base-files/files/bin/config_generate

# ===========================================
# 以下为注释掉的可选配置，按需启用
# ===========================================

# 设置密码为空（方便首次登录）
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

# 修改固件文件名添加日期前缀
# sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=$(shell date +"%Y%m%d")-/1' include/image.mk
