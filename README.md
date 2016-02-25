nextday-public-api
==================

## 授权

如果你致力于开发开源且免费的应用，那么你可以自由使用使用 NextDay 的 API，但是仍然需要申请 `Partner Secret`，申请方法在 https://github.com/NXMIX/nextday-public-api/wiki/如何申请。

如果你将 NextDay 的数据和图片用于闭源或者商业应用，那么请直接发邮件联系 support@nxmix.com , 商谈商业合作事宜。

## 详细文档请参见：

https://github.com/NXMIX/nextday-public-api/wiki

快速链接如下:

1. [访问地址](https://github.com/NXMIX/nextday-public-api/wiki/访问地址)
1. [身份验证](https://github.com/NXMIX/nextday-public-api/wiki/身份验证)
1. [可能的重定向](https://github.com/NXMIX/nextday-public-api/wiki/重定向)
1. [gzip 压缩](https://github.com/NXMIX/nextday-public-api/wiki/压缩)
1. [流量限制](https://github.com/NXMIX/nextday-public-api/wiki/流量限制)
1. [日历数据格式](https://github.com/NXMIX/nextday-public-api/wiki/日历数据格式)
1. [API说明](https://github.com/NXMIX/nextday-public-api/wiki/API说明)
1. [样例](https://github.com/NXMIX/nextday-public-api/wiki/样例)
1. [产品支持](https://github.com/NXMIX/nextday-public-api/wiki/issues)

## 测试

如果你已经获得了 `Partner Name` 和 `Partner Secret`，那么可以执行 `./test.sh` 或者 `./testMac.sh` 进行测试：

`./test.sh yourName yourSecret`

或者:

`./testMac.sh yourName yourSecret`

返回结果为当天的 NextDay 日历数据。

** 有两个测试程序的原因是 MacOS 和 Linux 系统缺省安装的 `md5` 程序是不同的。MacOS 是 `md5`，而 Linux 是 `md5sum` **

** **

## License

[MIT](./LICENSE)
