#!/bin/bash

cd `dirname $0`

plugins=("any-mobile-theme-switcher")

for p in "${plugins[@]}"; do
    curl -L "https://downloads.wordpress.org/plugin/${p}.zip" --create-dirs --output "tmp/wp-plugins/${p}.zip"
done

unzip -o tmp\/wp-plugins\/*.zip -d "/usr/src/wordpress/wp-content/plugins"
rm -rf "tmp/wp-plugins"

chown -R www-data:www-data /var/www/html
chown -R www-data:www-data /usr/src/wordpress
