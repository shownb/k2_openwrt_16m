 version="21.02.0-rc4"
 wget -q https://downloads.openwrt.org/releases/${version}/targets/ramips/mt7620/openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
 xz -d openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
 tar -xf openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar
 cd openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64
 ls -la
 wget -P ./target/linux/ramips/image https://github.com/Carrjiang/Actions-OpenWrt_PHICOMM_K2/raw/master/mt7620.mk -O mt7620.mk
 wget -P ./target/linux/ramips/dts https://github.com/Carrjiang/Actions-OpenWrt_PHICOMM_K2/raw/master/mt7620a_phicomm_psg1218.dtsi -O mt7620a_phicomm_psg1218.dtsi
 #make info
 #make image PROFILE=phicomm_psg1218a PACKAGES="" CONFIG_IPV6=n
#uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-app-firewall luci-mod-admin-full luci-app-ddns -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only
#uhttpd luci-base luci-app-shadowsocks-libev shadowsocks-libev-ss-local -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only
