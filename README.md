# nginx_301_redirector

基于 Nginx 的 URL 转发器

## 如何使用

```shell
# nginx_http_port=80
# nginx_https_port=443
redirect_addr=https://www.notion.so/thoxvi/a78416502c6d4df69b11c6051086c870

# docker build -t thoxvi/nginx_301_redirector:latest .
docker pull thoxvi/nginx_301_redirector:latest
docker run -d \
           --name redirector \
           --network=host \
        #    -p $nginx_http_port:80 \
        #    -p $nginx_https_port:443 \
           -e REDIRECT_ADDR=$redirect_addr \
           --restart=always \
           thoxvi/nginx_301_redirector:latest
```

## 如何停止

```shell
docker rm -f redirector
```
