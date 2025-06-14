# merlin_shadowsocks

* <b>arm380 文件夹</b><br/>
用于存放梅林 380 改版固件的包

* <b>arm384 文件夹</b><br/>
用于存放梅林 384 改版固件的包

* <b>rules 文件夹</b><br/>
用于存放代理规则


## 构建属于自己的代理规则

在`rules/gfwlist.conf`修改或添加代理规则, 然后进入相应固件包的目录进行打包, 生成`shadowsocks.tar.gz`就可在路由后台离线上传安装。

> gfwlist.conf 可通过这个项目进行维护更新 [my_gfw_list](https://github.com/wbcyclist/my_gfw_list)

```
# 安装 gnu-sed
brew install gnu-sed

# 构建梅林 380 改版固件的包
cd arm380 && ./build.sh
```
