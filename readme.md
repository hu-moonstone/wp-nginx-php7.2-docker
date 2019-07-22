# Wordpress containers for theme development

## Copy wp-config.php from app container

```
$ docker exec -it wp-nginx-php72_app_1 sh -c 'cat /var/www/html/wp-config.php' > app/public/wp-config.php
```

## Dump database

```
$ bash dump.sh
```

## Register plugin

Automatically install registered plugins at container startup.
If you want to add plugins, edit "app/script/plugins.sh".

```
#!/bin/bash

cd `dirname $0`

plugins=("plugin1" "plugin2" "plugin3")
```
