FROM centos:7

ADD td-agent-bit.repo /etc/yum.repos.d/
ADD td-agent-bit.conf /etc/td-agent-bit/

RUN yum -y install td-agent-bit; yum clean all

RUN chgrp -R 0 /etc/td-agent-bit/ && \
    chmod -R g=u /etc/td-agent-bit

EXPOSE 24224

USER 1001

CMD ["/opt/td-agent-bit/bin/td-agent-bit", "-c", "etc/td-agent-bit/td-agent-bit.conf"]

