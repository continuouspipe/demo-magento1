# Magento 1 demoshop

A working Magento 1 instance running with the sample shop.

## How to build

```bash
docker-compose up web-ce
```

## How to use

Creates the store on https://dockerm1demo_web-ce.docker/

Admin login credentials:

Username: admin

Password: admin

Ensure your parent directory is titled `dockerm1demo` when using dock-cli / dnsdock to manage DNS.


## Issues

Cron causes these messages every minute:

```
INFO reaped unknown pid <x>
```

The Magento cron is called correctly though.
