FROM cloudfoundry/trusty64
MAINTAINER Vinicius Carvalho <vcc@devguild.us>

ADD run /run.sh

EXPOSE 8080
CMD ["/run.sh"]
