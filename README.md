# Magento 1 demoshop

A working Magento 1 instance running with the sample shop.

## How to build

```bash
docker-compose up web_ce
```

## How to use

Creates the store on https://demo-magento1-ce.docker/

Admin login credentials:

Username: admin

Password: admin

## Issues

Cron causes these messages every minute:

```
INFO reaped unknown pid <x>
```

The Magento cron is called correctly though.
