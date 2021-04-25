# MT7621AT 华硕改版固件
AsusWRT MT7621AT+MT7603E+MT7612E+USB

## 支持的设备型号
- 小米路由器R3G
- 新路由3（需拆除CPU附件C48电容）
- 极路由4增强版
- 中兴E8820S
- 新路由2

## 刷入方式
1. 使用breed刷入
2. 先需要设置好EEPROM中的mac地址
3. R3G选择分区1刷入
4. 其他默认

## 如何编译
1. cd release/src-ra-5010
2. make model (currently available models are: rt-mir3g, rt-newifi3, rt-hiwifi4, rt-e8820s)

## 不支持的功能
- 双wan
- 无线中继

