FROM registry.access.redhat.com/ubi8/ubi
MAINTAINER sig-platform@spinnaker.io
COPY echo-web/build/install/echo /opt/echo
RUN yum -y install java-11-openjdk-headless.x86_64 wget vim
RUN adduser spinnaker
RUN mkdir -p /opt/echo/plugins 
USER spinnaker
CMD ["/opt/echo/bin/echo"]
