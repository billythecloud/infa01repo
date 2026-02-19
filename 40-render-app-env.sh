#!/bin/sh
set -eu

POD_NAME="${POD_NAME:-unknown-pod}"
export POD_NAME

envsubst '${POD_NAME}' \
  < /usr/share/nginx/html/app-env.js.template \
  > /usr/share/nginx/html/app-env.js
