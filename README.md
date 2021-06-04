# MT7621AT 华硕改版固件（不含软件中心版本）
AsusWRT MT7621AT+MT7603E+MT7612E+USB

## 支持的设备型号
1. 小米路由器R3G
2. 新路由3（需拆除CPU附件C48电容）
3. 极路由4增强版
4. 中兴E8820S
5. 新路由2

## 刷入方式
1. 使用breed刷入
2. 先需要设置好EEPROM中的mac地址
3. R3G选择分区1刷入
4. 其他默认

## 如何编译
1. cd release/src-ra-5010
2. make model (currently available models are: rt-mir3g, rt-newifi3, rt-hiwifi4, rt-e8820s)

## 不支持的功能
1. 双wan
2. 无线中继

## 各机型特点
1. 新路由3：MT7621AT+MT7603E+MT7612E+1WAN+4LAN+512+32+USB3.0(矿渣比较多，不硬改无线信号和散热都不太行,刷华硕改版固件需要拆除电容，需要稳定的软件中心需要改64m闪存）
2. 极路由4：MT7621AT+MT7603E+MT7612E+1WAN+3LAN+256+128+USB2.0+USB3.0(挖过矿的机器也不少，机器性能比较抽奖，刷华硕固件小部分机器会遇到真正的无法获取IP的问题，其中大部分是设置或者EEPROM不正确）
3. E8820S：MT7621AT+MT7603E+MT7612E+1WAN+4LAN+256+128+USB2.0（电信定制机，无线信号比较垃圾，刷机需要拆机TTL刷机，需要一定的动手能力，网口较全建议纯有线使用）
4. R3G：MT7621AT+MT7603E+MT7612E+1WAN+2LAN+256+128+USB3.0（有部分电信定制机，官方固件无线性能不强，usb是一个残废，厚度薄，可以很好的藏在电视后面，但网口较少，做AP或者对有线要求不高的推荐）
5. A040WQ：MT7621AT+MT7615E+1WAN+4LAN+256+128+USB2.0（电信定制机，无线部分几乎就是没有功放的K2P，但是信号比极路由4增强版稍弱，现在华硕改版固件还不太完善，几乎就是无线较好的E8820S）

## 支持软件中心的固件发布地址（暂时不开源）
1. 新路由3：https://www.right.com.cn/FORUM/thread-4069462-1-1.html
2. 极路由4：https://www.right.com.cn/FORUM/thread-4087762-1-1.html
3. E8820S：https://www.right.com.cn/FORUM/thread-4094989-1-1.html
4. R3G：https://www.right.com.cn/FORUM/thread-4087671-1-1.html
5. A040WQ：https://www.right.com.cn/FORUM/thread-4111717-1-1.html