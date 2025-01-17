#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# 取消Lean大登陆密码
#sed -i 's/^\(.*99999\)/#&/' package/lean/default-settings/files/zzz-default-settings

# 删除原版trojan插件
#rm -rf package/lean/trojan

# 删除passwall中xray-core核心
#rm -rf package/passwall/xray-core

# 拉取passwall源码
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
#git clone https://github.com/lxhao61/openwrt-passwall.git package/passwall
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/kenzok8/small.git package/openwrt-packages-small
git clone https://github.com/TheMMcOfficial/lede-cups.git package/lede-cups
