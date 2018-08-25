FROM nginx:mainline-alpine

COPY entrypoint.sh /entrypoint.sh
COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

RUN chmod +x /entrypoint.sh 
RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx
RUN chgrp -R root /var/cache/nginx
RUN addgroup nginx root

USER nginx
CMD /entrypoint.sh
EXPOSE 8080
