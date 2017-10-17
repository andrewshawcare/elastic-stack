#!/bin/bash
function import-dashboards {
  /usr/share/metricbeat/scripts/import_dashboards \
    -beat 'metricbeat' \
    -es http://elasticsearch:9200 \
    -user elastic \
    -pass changeme

  /usr/share/metricbeat/scripts/import_dashboards \
    -beat 'filebeat' \
    -es http://elasticsearch:9200 \
    -user elastic \
    -pass changeme

  /usr/share/metricbeat/scripts/import_dashboards \
    -beat 'packetbeat' \
    -es http://elasticsearch:9200 \
    -user elastic \
    -pass changeme
}

until import-dashboards; do
  sleep 30
done
