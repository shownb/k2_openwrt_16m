 #good for you
version="23.05.5"
current_path = $(pwd)
wget -q https://downloads.openwrt.org/releases/${version}/targets/ramips/mt7620/openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
xz -dq openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
tar -xf openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar
cd openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64
curl https://raw.githubusercontent.com/shownb/k2_openwrt_16m/main/23.05.5/mt7620.mk -L -o ./target/linux/ramips/image/mt7620.mk
curl https://raw.githubusercontent.com/shownb/k2_openwrt_16m/main/23.05.5/mt7620a_phicomm_k2-v22.4.dts -L -o ./target/linux/ramips/dts/mt7620a_phicomm_k2-v22.4.dts
make image PROFILE=phicomm_k2-v22.4 PACKAGES="uhttpd uhttpd-mod-ubus luci-theme-bootstrap luci-app-opkg luci-base luci-app-firewall luci-mod-admin-full -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only luci-proto-wireguard kmod-wireguard"
