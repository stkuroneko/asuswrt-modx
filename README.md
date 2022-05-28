# 华硕改版固件Asuswrt-Modx
MT7621AT华硕改版固件支持软件中心

## 支持的设备
- 小米R3G
- 极路由4增强版
- 中兴E8820S
- 诺基亚A-040W-Q（闲鱼卖家赞助）
- 新路由3（需要拆除CPU附近的电容C48）
- 新路由2
- 小娱C3
- 京东云1代（群友赞助）
- 瑞斯达康MSG1500（群友赞助）
- 小米R3P
- 红米/小米AC2100（群友赞助红米AC2100）

## 如何刷机
1. 直接BREED刷机
2. 

## 如何编译固件
1. cd release/src-ra-5010
2. make model (currently available models are: rt-mir3g, rt-mir4a, rt-rm2100, rt-r2100)

## 不支持的功能
- 双wan
- 无线中继（纯MT7615机型已支持）

## 各机型特点
1. 新路由3：MT7621AT+MT7603E+MT7612E+1WAN+4LAN+512+32+USB3.0(矿渣比较多，不硬改无线信号和散热都不太行,刷华硕改版固件需要拆除电容，需要稳定的软件中心需要改64m闪存）
2. 极路由4：MT7621AT+MT7603E+MT7612E+1WAN+3LAN+256+128+USB2.0+USB3.0(挖过矿的机器也不少，机器性能比较抽奖，刷华硕固件小部分机器会遇到真正的无法获取IP的问题，其中大部分是设置或者EEPROM不正确）
3. E8820S：MT7621AT+MT7603E+MT7612E+1WAN+4LAN+256+128+USB2.0（电信定制机，无线信号比较垃圾，刷机需要拆机TTL刷机，需要一定的动手能力，网口较全建议纯有线使用）
4. R3G：MT7621AT+MT7603E+MT7612E+1WAN+2LAN+256+128+USB3.0（有部分电信定制机，官方固件无线性能不强，usb是一个残废，厚度薄，可以很好的藏在电视后面，但网口较少，做AP或者对有线要求不高的推荐）
5. A040WQ：MT7621AT+MT7615E+1WAN+4LAN+256+128+USB2.0（电信定制机，无线部分几乎就是没有功放的K2P，但是信号比极路由4增强版稍弱，现在华硕改版固件还不太完善，几乎就是无线较好的E8820S）

## Important note
- I do not take responsibility for any damages - you do everything on your own risk

## 关于捐赠
- 全自愿原则，不强制
- 软件中心部分和插件服务器均为提取的P大的，在此感谢P大，如果想要捐助，觉得软件中心做的好的请捐赠P大，觉得固件做的好的请感谢固件本体来源，觉得适配机器弄的好的才捐赠我
- 也可提供硬件支持

## 关于上游源码和开源说明
- 固件本体主要来源https://github.com/lukasz1992/asuswrt-xiaomi
- 软件中心部分来源https://github.com/SWRT-dev/ac85p-asuswrt
- 适配的机型多了，然后工作比较忙，有时候无法做到及时更新，某些顽固bug实在没时间和精力去解决
- 点击链接加入群聊【Asuswrt-Modx固件交流群】：https://jq.qq.com/?_wv=1027&k=Rvi1TsLC
