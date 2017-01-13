FROM quay.io/continuouspipe/magento1-nginx-php5.6:v1.0

RUN apt-get update && apt-get install -y php-memcache

COPY app/ /app

COPY etc/ /etc

COPY assets /tmp

COPY usr /usr

# Install dependencies
#ARG GITHUB_TOKEN=
RUN chown -R build:build /app \
 && bash /usr/local/bin/supervisor_custom_start-20-magento1
