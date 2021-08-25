#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 取消helloworld源注释（ssr-plus）
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加xiaorouji大passwall源
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
sed -i '$a src-git liuran001_packages https://github.com/liuran001/openwrt-packages' feeds.conf.default

#./scripts/diffconfig.sh > seed.config 复制一下这个seed.config的文本内容到项目根目录的.config
