FROM jenkins

USER root

ARG docker_gid=993

RUN wget https://download.docker.com/linux/static/stable/x86_64/docker-17.06.0-ce.tgz\
	&& tar xzvf docker-17.06.0-ce.tgz\
	&& cp docker/* /usr/bin/ \
	&& groupadd -g ${docker_gid} docker \
	&& usermod -ag docker jenkins \

USER jenkins