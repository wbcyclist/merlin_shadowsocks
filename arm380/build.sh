#!/bin/sh

MODULE=shadowsocks
VERSION=`cat ./shadowsocks/ss/version|sed -n 1p`
TITLE=科学上网
DESCRIPTION=科学上网
HOME_URL=Main_Ss_Content.asp

DIR="$( cd "$( dirname "$BASH_SOURCE[0]" )" && pwd )"
cd $DIR/../rules && sh gen_version1.sh
cd $DIR

cp -f ../rules/gfwlist.conf shadowsocks/ss/rules/gfwlist.conf
cp -f ../rules/chnroute.txt shadowsocks/ss/rules/chnroute.txt
#cp -f ../rules/adblock.conf shadowsocks/ss/rules/adblock.conf
cp -f ../rules/cdn.txt shadowsocks/ss/rules/cdn.txt
#cp -f ../rules/Routing.txt shadowsocks/ss/rules/Routing.txt
#cp -f ../rules/WhiteList_new.txt shadowsocks/ss/rules/WhiteList.txt

cp -f ../rules/version1 shadowsocks/ss/rules/version

# 清理旧文件
rm -f ${MODULE}.tar.gz
rm -f $MODULE/.DS_Store
rm -f $MODULE/*/.DS_Store


# 打包
echo '\n开始打包 shadowsocks'
COPYFILE_DISABLE=1 tar -zcf ${MODULE}.tar.gz $MODULE
if type md5sum >/dev/null 2>&1; then 
	md5value=`md5sum ${MODULE}.tar.gz|tr " " "\n"|sed -n 1p`
else 
	md5value=`md5 ${MODULE}.tar.gz|tr " " "\n"|sed -n 4p`
fi

cat > ./version <<EOF
$VERSION
$md5value
EOF
cat version

DATE=`date +%Y-%m-%d_%H:%M:%S`
cat > ./config.json.js <<EOF
{
"version":"$VERSION",
"md5":"$md5value",
"home_url":"$HOME_URL",
"title":"$TITLE",
"description":"$DESCRIPTION",
"tar_url": "https://raw.githubusercontent.com/wbcyclist/merlin_shadowsocks/master/arm380/shadowsocks.tar.gz",
"build_date":"$DATE"
}
EOF
