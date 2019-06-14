How to use
0.  edit root project in nginx/nginx.conf
1.  docker-compose build jnd docker-compose up
2.  docker ps
3.  docker exec -it container_id /bin/bash
4.  service php7.3-fpm start
5.  composer create-project --prefer-dist laravel/laravel project
6.  useradd nginx && \
7.  chown -R nginx:nginx /var/www/html/project/ && \
8.  chmod -R 755 /var/www/html/project
9.  access to localhost
10. Mission completed if you see Laravel on  your browser
