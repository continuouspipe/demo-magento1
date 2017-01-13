#!/bin/bash

set -xe

source /usr/local/share/bootstrap/common_functions.sh
source /usr/local/share/php/common_functions.sh
load_env

as_code_owner "../bin/n98-magerun config:set web/unsecure/base_url ${SERVICE_WEB_CE_PUBLIC_ENDPOINT}" /app/public
as_code_owner "../bin/n98-magerun config:set web/secure/base_url ${SERVICE_WEB_CE_PUBLIC_ENDPOINT}" /app/public
