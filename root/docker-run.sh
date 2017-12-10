#!/bin/bash

if [ -z "${IOTA_NODE}" ]; then
  echo "Please set IOTA_NODE environment variable."
  exit 1
fi

chown -R iota-pm:iota-pm /opt/iota-pm

cd /opt/iota-pm

exec su-exec iota-pm iota-pm -i ${IOTA_NODE} -p 0.0.0.0:${HTTP_PORT}
