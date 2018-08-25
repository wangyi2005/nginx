sed -i "s/loca_1/$loca_1/g"  /etc/nginx/conf.d/default.conf
sed -i "s/path_1/$path_1/g"  /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
