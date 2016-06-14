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

### 使用通用的 `Partner Name` 和 `Partner Secret`

Nextday 为了大家测试方便，也提供了一个专门用于测试的 `Partner Name` 和 `Partner Secret` :

* Partner Name: testPartner1
* Partner Secret: 479C1956-80F9-4E57-B389-7356C2D1E68D

For Linux:

`./test.sh testPartner1 479C1956-80F9-4E57-B389-7356C2D1E68D`

或则你用的是 MacOS:

`./testMac.sh testPartner1 479C1956-80F9-4E57-B389-7356C2D1E68D`

** 有两个测试程序的原因是 MacOS 和 Linux 系统缺省安装的 `md5` 程序是不同的。MacOS 是 `md5`，而 Linux 是 `md5sum` **

通过这个 `Partner Name` 返回的数据，一定不会超过“今天”之前七天。假设今天是 `2016-06-14`，那么返回的“最后”一天的数据一定不会超过 `2016-06-08`。

### 使用你申请的 `Partner Name` 和 `Partner Secret`

`./test.sh yourName yourSecret`

或者:

`./testMac.sh yourName yourSecret`

通过你申请到的 `Partner Name` 和 `Partner Secret` 返回的数据没有时间限制（仍然是“今天”（包含“今天”）之前的数据）。

## License

[MIT](./LICENSE)
