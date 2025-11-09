#!/bin/bash

## br-lan ip from default 192.168.1.1 to 192.168.56.2
sed -i 's/192.168.1.1/192.168.56.2/g' package/base-files/files/bin/config_generate

## Append these lines to .config
cat >> .config << EOF
CONFIG_PACKAGE_luci=y
CONFIG_PACKAGE_luci-i18n-base-zh-cn=y
CONFIG_PACKAGE_luci-i18n-admin-zh-cn=y
CONFIG_PACKAGE_luci-i18n-firewall-zh-cn=y
CONFIG_PACKAGE_luci-i18n-package-manager-zh-cn=y
EOF
