# nginx_301_redirector

> 暂不支持 HTTPS -> HTTPS

基于 Nginx 的 URL 转发器

## 如何使用

```shell
docker pull thoxvi/nginx_301_redirector:latest

redirect_addr=https://www.notion.so/thoxvi/a78416502c6d4df69b11c6051086c870
docker run -d \
           --name redirector \
           --network=host \
           -e REDIRECT_ADDR=$redirect_addr \
           --restart=always \
           thoxvi/nginx_301_redirector:latest
```

## 如何停止

```shell
docker rm -f redirector
```
