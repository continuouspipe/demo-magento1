FROM quay.io/continuouspipe/magento1-nginx-php5.6:stable

COPY app/ /app

COPY etc/ /etc

COPY assets /tmp

COPY usr /usr

RUN container build
