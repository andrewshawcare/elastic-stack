#!/bin/bash
function set-default-index-pattern {
  curl \
    -XPUT \
    http://elastic:changeme@elasticsearch:9200/.kibana/config/5.6.3 \
    -d '{"defaultIndex" : "metricbeat-*"}'
}

until set-default-index-pattern; do
  sleep 30
done
