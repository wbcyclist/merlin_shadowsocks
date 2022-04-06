#!/bin/sh

# 1 gfwlist.conf
if type md5sum >/dev/null 2>&1; then 
	md5sum1=`md5sum gfwlist.conf|tr " " "\n"|sed -n 1p`
	oldmd5sum1=`cat version1 | sed -n 1p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum1"x = "$oldmd5sum1"x ];then
		echo 'gfwlist not changed'
	else
		echo 'update gfwlist!'
		gsed -i "1c `date +%Y-%m-%d` # $md5sum1 gfwlist" version1
	fi
else 
	md5sum1=`md5 gfwlist.conf|tr " " "\n"|sed -n 4p`
	oldmd5sum1=`cat version1 | sed -n 1p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum1"x = "$oldmd5sum1"x ];then
		echo 'gfwlist not changed'
	else
		echo 'update gfwlist!'
		gsed -i "1c `date +%Y-%m-%d` # $md5sum1 gfwlist" version1
	fi
fi

# 2 chnroute.txt
if type md5sum >/dev/null 2>&1; then 
	md5sum2=`md5sum chnroute.txt|tr " " "\n"|sed -n 1p`
	oldmd5sum2=`cat version1 | sed -n 2p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum2"x = "$oldmd5sum2"x ];then
		echo 'chnroute not changed'
	else
		echo 'update chnroute!'
		gsed -i "2c `date +%Y-%m-%d` # $md5sum2 chnroute" version1
	fi
else 
	md5sum2=`md5 chnroute.txt|tr " " "\n"|sed -n 4p`
	oldmd5sum2=`cat version1 | sed -n 2p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum2"x = "$oldmd5sum2"x ];then
		echo 'chnroute not changed'
	else
		echo 'update chnroute!'
		gsed -i "2c `date +%Y-%m-%d` # $md5sum2 chnroute" version1
	fi
fi

# 3 adblock.conf
if type md5sum >/dev/null 2>&1; then 
	md5sum3=`md5sum adblock.conf|tr " " "\n"|sed -n 1p`
	oldmd5sum3=`cat version1 | sed -n 3p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum3"x = "$oldmd5sum3"x ];then
		echo 'adblock not changed'
	else
		echo 'update adblock!'
		gsed -i "3c `date +%Y-%m-%d` # $md5sum3 adblock" version1
	fi
else 
	md5sum3=`md5 adblock.conf|tr " " "\n"|sed -n 4p`
	oldmd5sum3=`cat version1 | sed -n 3p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum3"x = "$oldmd5sum3"x ];then
		echo 'adblock not changed'
	else
		echo 'update adblock!'
		gsed -i "3c `date +%Y-%m-%d` # $md5sum3 adblock" version1
	fi
fi

# 4 cdn.txt
if type md5sum >/dev/null 2>&1; then 
	md5sum4=`md5sum cdn.txt|tr " " "\n"|sed -n 1p`
	oldmd5sum4=`cat version1 | sed -n 4p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum4"x = "$oldmd5sum4"x ];then
		echo 'cdn not changed'
	else
		echo 'update cdn!'
		gsed -i "4c `date +%Y-%m-%d` # $md5sum4 cdn" version1
	fi
else 
	md5sum4=`md5 cdn.txt|tr " " "\n"|sed -n 4p`
	oldmd5sum4=`cat version1 | sed -n 4p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum4"x = "$oldmd5sum4"x ];then
		echo 'cdn not changed'
	else
		echo 'update cdn!'
		gsed -i "4c `date +%Y-%m-%d` # $md5sum4 cdn" version1
	fi
fi

# 5 Routing.txt
if type md5sum >/dev/null 2>&1; then 
	md5sum5=`md5sum Routing.txt|tr " " "\n"|sed -n 1p`
	oldmd5sum5=`cat version1 | sed -n 5p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum5"x = "$oldmd5sum5"x ];then
		echo 'Routing not changed'
	else
		echo 'update Routing!'
		gsed -i "5c `date +%Y-%m-%d` # $md5sum5 Routing" version1
	fi
else 
	md5sum5=`md5 Routing.txt|tr " " "\n"|sed -n 4p`
	oldmd5sum5=`cat version1 | sed -n 5p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum5"x = "$oldmd5sum5"x ];then
		echo 'Routing not changed'
	else
		echo 'update Routing!'
		gsed -i "5c `date +%Y-%m-%d` # $md5sum5 Routing" version1
	fi
fi

# 6 WhiteList.txt
if type md5sum >/dev/null 2>&1; then 
	md5sum6=`md5sum WhiteList.txt|tr " " "\n"|sed -n 1p`
	oldmd5sum6=`cat version1 | sed -n 6p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum6"x = "$oldmd5sum6"x ];then
		echo 'WhiteList not changed'
	else
		echo 'update WhiteList!'
		gsed -i "6c `date +%Y-%m-%d` # $md5sum6 WhiteList" version1
	fi
else 
	md5sum6=`md5 WhiteList.txt|tr " " "\n"|sed -n 4p`
	oldmd5sum6=`cat version1 | sed -n 6p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum6"x = "$oldmd5sum6"x ];then
		echo 'WhiteList not changed'
	else
		echo 'update WhiteList!'
		gsed -i "6c `date +%Y-%m-%d` # $md5sum6 WhiteList" version1
	fi
fi

# 7 WhiteList_new.txt
if type md5sum >/dev/null 2>&1; then 
	md5sum7=`md5sum WhiteList_new.txt|tr " " "\n"|sed -n 1p`
	oldmd5sum7=`cat version1 | sed -n 7p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum7"x = "$oldmd5sum7"x ];then
		echo 'WhiteList_new not changed'
	else
		echo 'update WhiteList_new!'
		gsed -i "7c `date +%Y-%m-%d` # $md5sum7 WhiteList_new" version1
	fi
else 
	md5sum7=`md5 WhiteList_new.txt|tr " " "\n"|sed -n 4p`
	oldmd5sum7=`cat version1 | sed -n 7p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum7"x = "$oldmd5sum7"x ];then
		echo 'WhiteList_new not changed'
	else
		echo 'update WhiteList_new!'
		gsed -i "7c `date +%Y-%m-%d` # $md5sum7 WhiteList_new" version1
	fi
fi

# 8 apple_china.txt
if type md5sum >/dev/null 2>&1; then 
	md5sum8=`md5sum apple_china.txt|tr " " "\n"|sed -n 1p`
	oldmd5sum8=`cat version1 | sed -n 8p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum8"x = "$oldmd5sum8"x ];then
		echo 'apple_china not changed'
	else
		echo 'update apple_china!'
		gsed -i "8c `date +%Y-%m-%d` # $md5sum8 apple_china" version1
	fi
else 
	md5sum8=`md5 apple_china.txt|tr " " "\n"|sed -n 4p`
	oldmd5sum8=`cat version1 | sed -n 8p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum8"x = "$oldmd5sum8"x ];then
		echo 'apple_china not changed'
	else
		echo 'update apple_china!'
		gsed -i "8c `date +%Y-%m-%d` # $md5sum8 apple_china" version1
	fi
fi

# 9 google_china.txt
if type md5sum >/dev/null 2>&1; then 
	md5sum9=`md5sum google_china.txt|tr " " "\n"|sed -n 1p`
	oldmd5sum9=`cat version1 | sed -n 9p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum9"x = "$oldmd5sum9"x ];then
		echo 'google_china not changed'
	else
		echo 'update google_china!'
		gsed -i "9c `date +%Y-%m-%d` # $md5sum9 google_china" version1
	fi
else 
	md5sum9=`md5 google_china.txt|tr " " "\n"|sed -n 4p`
	oldmd5sum9=`cat version1 | sed -n 9p | tr " " "\n" | sed -n 3p`
	if [ "$md5sum9"x = "$oldmd5sum9"x ];then
		echo 'google_china not changed'
	else
		echo 'update google_china!'
		gsed -i "9c `date +%Y-%m-%d` # $md5sum9 google_china" version1
	fi
fi

