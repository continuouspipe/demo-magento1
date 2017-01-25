#!/bin/bash

set -xe

source /usr/local/share/bootstrap/common_functions.sh
source /usr/local/share/php/common_functions.sh
load_env

as_code_owner "../bin/n98-magerun config:set web/unsecure/base_url ${PUBLIC_ADDRESS}" /app/public
as_code_owner "../bin/n98-magerun config:set web/secure/base_url ${PUBLIC_ADDRESS}" /app/public

