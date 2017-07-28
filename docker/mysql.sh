docker run --name mysql -e MYSQL_ROOT_PASSWORD=123456 -p "3306:3306" -d mysql --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

docker run --name phpmyadmin -d --link mysql:db -p 8090:80 -e PMA_ARBITRARY=1 phpmyadmin/phpmyadmin