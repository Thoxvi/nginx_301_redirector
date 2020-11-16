# nginx_301_redirecter

基于 Nginx 的 URL 转发器

## 如何使用

```shell
nginx_port=8080
redirect_addr=https://www.notion.so/thoxvi/a78416502c6d4df69b11c6051086c870

# docker build -t thoxvi/nginx_301_redirecter:latest .
docker pull thoxvi/nginx_301_redirecter:latest
docker run -d \
           --name redirecter \
           -p $nginx_port:80 \
           -e REDIRECT_ADDR=$redirect_addr \
           --restart=always \
           thoxvi/nginx_301_redirecter:latest
```

## 如何停止

```shell
docker rm -f redirecter
```
