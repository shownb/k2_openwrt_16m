# k2_openwrt_16m

## for 8m spi flash
使用openwrt官方源，主要参考 https://github.com/listenfree/openwrt_k2  
this one can't create image for 16m spi flash.  
see: openwrt-ci.yml for details.  

## for 16m spi flash
![mt7620.mk](https://github.com/shownb/k2_openwrt_16m/blob/03bae76bf10116b3ae747d138366032ff84cf637/mt7620.mk#L830) and mt7620a_phicomm_psg1218.dtsi is modify from openwrt-21.02  
.config you can see 21.02/simple.config  
more details see new.yml  
