# nginx_301_redirecter

基于 Nginx 的 URL 转发器

## 如何使用

```shell
docker build -t thoxvi/nginx_301_redirecter:latest .
docker run --rm --name redirecter -e REDIRECT_ADDR=https://www.notion.so/thoxvi/a78416502c6d4df69b11c6051086c870 -p 8080:80 thoxvi/nginx_301_redirecter:latest

# docker rm -f redirecter
```
