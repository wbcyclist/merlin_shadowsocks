#!/bin/sh
#
# 梅林路由固件 SS 检测连接失效脚本
# 失效日志
# crypto: stream: repeat IV detected
# invalid password or cipher
#

filename=$(basename $0)
ACTION=$1

onstart() {
  while true; do
    sleep 2m
    if [ $(tail -n 5 /tmp/syslog.log | grep "invalid password or cipher" | wc -l) -ge 2 ] ; then
      dbus set ss_basic_action=1
      . /koolshare/ss/ssconfig.sh restart

    elif [ $(ps | grep -v grep | grep -w ss-redir | wc -l) -eq 0 ] ; then
      eval `dbus export ss`
      if [ "$ss_basic_enable" == "1" ];then
        dbus set ss_basic_action=1
        . /koolshare/ss/ssconfig.sh restart
      fi
    fi
  done
}

onstop() {
  killall $filename
}

case $ACTION in
start)
  D_COUNT=$(ps | grep -v grep | grep -w $filename | wc -l)
  if [ $D_COUNT -gt 2 ] ; then
    echo "$filename already running"
  else
    echo "start ss checker"
    onstart >/dev/null 2>&1 &
  fi
  ;;
stop)
  echo "stop ss_checker"
  onstop
  ;;
*)
  echo "Usage: $filename (start|stop)"
  exit 1
  ;;
esac
