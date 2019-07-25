FROM wordpress:5.2-php7.2-fpm-alpine

RUN apk --update add bash unzip

ENV WORDPRESS_TAR_FILE wordpress-5.2.2-ja.tar.gz
RUN rm -rf /usr/src/wordpress \
 && curl -O https://ja.wordpress.org/${WORDPRESS_TAR_FILE} \
 && tar -xzf ${WORDPRESS_TAR_FILE} -C /usr/src/ \
 && rm ${WORDPRESS_TAR_FILE} \
 && chown -R www-data:www-data /usr/src/wordpress

ADD ./script/plugins.sh /plugins.sh
RUN bash /plugins.sh

ADD --chown=www-data:www-data ./public/wp-content/uploads/* /var/www/html/wp-content/uploads/

RUN chmod -R 775 /var/www/html
