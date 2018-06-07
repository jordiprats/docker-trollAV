FROM ubuntu:16.04
MAINTAINER Jordi Prats

# TODO
# http://label-schema.org/rc1/#build-time-labels
LABEL org.label-schema.vendor="" \
      org.label-schema.url="" \
      org.label-schema.name="" \
      org.label-schema.license="" \
      org.label-schema.version=""\
      org.label-schema.vcs-url="" \
      org.label-schema.vcs-ref="" \
      org.label-schema.build-date="" \
      org.label-schema.schema-version=""

ENV HOME /root

RUN mkdir -p /usr/local/src/bitdefender

COPY installer.tar /usr/local/src

RUN tar xf /usr/local/src/installer.tar -C /usr/local/src/bitdefender

RUN chmod +x /usr/local/src/bitdefender/installer

RUN /usr/local/src/bitdefender/installer
