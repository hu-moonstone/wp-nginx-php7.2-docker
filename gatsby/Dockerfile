FROM node:12.6.0-alpine

RUN apk add --no-cache python build-base

WORKDIR /var/www/html
COPY ./blazing-fast /var/www/html
RUN npm install -g --no-optional gatsby-cli yarn
RUN yarn

EXPOSE 8000

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh

# COPY ./entry.sh /

#RUN apk add --no-cache \
#    nginx \
#    python \
#    build-base \
#  && npm install --global --no-optional gatsby-cli \
#  && chmod +x /entry.sh

#WORKDIR /app
#EXPOSE 8000

#ONBUILD COPY ./blazing-fast /app
#ONBUILD RUN npm install
#ONBUILD RUN gatsby build
#RUN gatsby telemetry --disable


#ENTRYPOINT ["/entry.sh"]
#CMD ["serve-nginx"]
#CMD ["gatsby" "develop" "-H 0.0.0.0" "--port 8000"]
