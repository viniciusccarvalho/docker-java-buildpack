FROM cloudfoundry/trusty64
MAINTAINER Vinicius Carvalho <vcc@devguild.us>

RUN git clone https://github.com/cloudfoundry/java-buildpack /var/vcap/java-buildpack

