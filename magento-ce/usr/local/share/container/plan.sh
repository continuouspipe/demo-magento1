#!/bin/bash

alias_function do_magento_assets_install do_magento_assets_install_demo_inner
do_magento_assets_install() {
  do_magento_assets_install_demo
}

do_magento_assets_install_demo() {
  find /tmp/community/magento-sample-data-1.9.2.4/ -type f -exec chmod a-x {} +

  # Copy sample shop data
  cp -pR /tmp/community/magento-sample-data-1.9.2.4/media/* /app/public/media/
  cp -pR /tmp/community/magento-sample-data-1.9.2.4/skin/* /app/public/skin/

  chown -R "${APP_USER}:${APP_GROUP}" public/media
  chown -R "${CODE_OWNER}:${CODE_GROUP}" public/skin
  chmod -R u+rw,go-w,go+r public/media public/skin
}

