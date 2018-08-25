sed -i "s/loca-1/$loca-1/g"  /etc/nginx/conf.d/default.conf
sed -i "s/path-1/$path-1/g"  /etc/nginx/conf.d/default.conf

nginx -g daemon off;
