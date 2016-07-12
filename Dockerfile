FROM ubuntu:16.04

RUN apt-get update -y && apt-get -y install wkhtmltopdf xvfb

ADD ./start.sh /start.sh

RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
