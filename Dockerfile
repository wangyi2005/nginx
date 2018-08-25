FROM nginx:mainline-alpine

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 
RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx
RUN chgrp -R root /var/cache/nginx
RUN sed -i 's/listen\(.*\)80;/listen 8080;/' /etc/nginx/conf.d/default.conf
RUN sed -i 's/^user/#user/' /etc/nginx/nginx.conf
RUN addgroup nginx root

USER nginx
CMD /entrypoint.sh
EXPOSE 8080
