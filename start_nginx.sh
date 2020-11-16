#!/usr/bin/env bash
# Author: Thoxvi <A@Thoxvi.com>

export redirect_addr=https://baidu.com

if [ "$REDIRECT_ADDR" ];then redirect_addr=$REDIRECT_ADDR;fi

export DOLLAR='$'
envsubst < /default.conf > /etc/nginx/conf.d/default.conf

echo "/etc/nginx/conf.d/default.conf"
echo
cat /etc/nginx/conf.d/default.conf

mkdir -p /run/nginx
nginx -g "daemon off;"
