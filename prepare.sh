#!/bin/bash
cd openwrt
echo "clone openclash"
git clone https://github.com/vernesong/OpenClash.git package-temp
mv -f package-temp/luci-app-openclash package/lean/
rm -rf package-temp
echo "clone adguard home"
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package-temp
mv -f package-temp/ package/lean/luci-app-adguardhome
rm -rf package-temp


echo "clone theme-argon"
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  theme-temp/luci-theme-argon
rm -rf package/lean/luci-theme-argon
mv -f theme-temp/luci-theme-argon package/lean/
rm -rf theme-temp

echo "clone helloworld"
git clone git@github.com:fw876/helloworld.git package/lean/helloworld
