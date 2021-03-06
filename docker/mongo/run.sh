docker run -v /home/william/mongo/data:/data/db \
    -v /home/william/mongo/config:/data/configdb \
    -e MONGO_INITDB_ROOT_USERNAME=root \
    -e MONGO_INITDB_ROOT_PASSWORD=123456 \
    -p 27018:27017 \
    --name mongo \
    -d mongo:3.6 \
    --bind_ip_all


docker run -d --name mongo  \
		-e MONGO_INITDB_ROOT_USERNAME=mongoadmin \
		-e MONGO_INITDB_ROOT_PASSWORD=mypwd  \
		-v /root/docker/mongo:/data/db \
		-p 27018:27017 \
		mongo:4.0.1-xenial