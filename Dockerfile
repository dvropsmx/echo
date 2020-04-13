FROM registry.access.redhat.com/ubi8/ubi
MAINTAINER sig-platform@spinnaker.io
COPY echo-web/build/install/echo /opt/echo
RUN yum -y install openjdk-8-jre-headless wget
RUN adduser --disabled-login --system spinnaker
RUN mkdir -p /opt/echo/plugins && chown -R spinnaker:nogroup /opt/echo/plugins
USER spinnaker

CMD ["/opt/echo/bin/echo"]
