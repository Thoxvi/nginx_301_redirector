FROM nginx:1.19.4
COPY start_nginx.sh /
ENTRYPOINT ["bash", "/start_nginx.sh"]

COPY default.conf /
