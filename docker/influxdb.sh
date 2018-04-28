docker run -p 8086:8086 -p 8083:8083 \
    -v /home/william/volumes/influxdb:/var/lib/influxdb \
    -e INFLUXDB_ADMIN_ENABLED=true \
    -e INFLUXDB_ADMIN_USER=admin \
    -e INFLUXDB_ADMIN_PASSWORD=admin \
    -e INFLUXDB_HTTP_AUTH_ENABLED=true \
    -e INFLUXDB_DB=test \
    -e INFLUXDB_DATA_MAX_VALUES_PER_TAG=0 \
    --name influxdb \
    -d \
    influxdb:alpine