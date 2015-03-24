FROM cloudfoundry/trusty64
MAINTAINER Vinicius Carvalho <vcc@devguild.us>

ADD scripts/run.sh /run.sh


WORKDIR /var/vcap
EXPOSE 8080
CMD ["/run.sh"]
