FROM jenkins

USER root

ARG docker_gid=993

RUN wget https://download.docker.com/linux/static/stable/x86_64/docker-17.06.0-ce.tgz\
	&& tar xzvf docker-17.06.0-ce.tgz\
	&& cp docker/* /usr/bin/ \
	&& rm -rf docker-17.06.0-ce.tgz docker \
	&& groupadd -g ${docker_gid} docker \
	&& usermod -a -g docker jenkins

USER jenkins