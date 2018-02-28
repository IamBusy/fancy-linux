FROM openjdk:8-jre
RUN wget http://download.sensorsdata.cn/release/logagent/latest.tgz && \
    tar zxvf latest.tgz -C /opt && \
    rm latest.tgz

VOLUME /etc/sa
VOLUME /var/log/sa

ENTRYPOINT ["/opt/logagent/bin/logagent", "--conf", "/etc/sa/logagent.conf"]
