# Wordpress containers for theme development

## Copy wp-config.php from app container

```
$ docker exec -it wp-nginx-php72_app_1 sh -c 'cat /var/www/html/wp-config.php' > app/public/wp-config.php
```

## Dump database

```
$ bash dump.sh
```
