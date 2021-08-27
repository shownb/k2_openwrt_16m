version="21.02.0-rc4"
wget -q https://downloads.openwrt.org/releases/${version}/targets/ramips/mt7620/openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
xz -d openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
tar -xf openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar
cd openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64
ls -la
#wget -P ./target/linux/ramips/image https://github.com/shownb/k2_openwrt_16m/raw/master/mt7620.mk -O mt7620.mk
#wget -P ./target/linux/ramips/dts https://github.com/shownb/k2_openwrt_16m/raw/master/mt7620a_phicomm_psg1218.dtsi -O mt7620a_phicomm_psg1218.dtsi
curl https://raw.githubusercontent.com/shownb/k2_openwrt_16m/main/mt7620.mk -L -o ./target/linux/ramips/image/mt7620.mk
curl https://raw.githubusercontent.com/shownb/k2_openwrt_16m/main/mt7620a_phicomm_psg1218.dtsi -L -o ./target/linux/ramips/dts/mt7620a_phicomm_psg1218.dtsi
#make info
make image PROFILE=phicomm_psg1218a PACKAGES="uhttpd uhttpd-mod-ubus luci-theme-bootstrap luci-app-opkg luci-base luci-app-firewall luci-mod-admin-full -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only"
#uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-app-firewall luci-mod-admin-full luci-app-ddns -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only
#uhttpd luci-base luci-app-shadowsocks-libev shadowsocks-libev-ss-local -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only
