FROM docker.elastic.co/beats/filebeat:8.2.0
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
COPY modules.d /usr/share/filebeat/modules.d
USER root
VOLUME ["/volume"]
RUN chmod 644 /volume && \
chown root:filebeat /usr/share/filebeat/filebeat.yml
