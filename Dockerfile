FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -y dnsutils
RUN apt-get install -y iputils-ping
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y telnet

RUN curl -L https://github.com/bojand/ghz/releases/download/v0.44.0/ghz_0.44.0_Linux_x86_64.tar.gz > ghz.tar.gz \
    && tar -zxf ghz.tar.gz \
    && mv ghz /usr/local/bin/ghz \
    && rm ghz.tar.gz
RUN curl -L https://github.com/fullstorydev/grpcurl/releases/download/v1.4.0/grpcurl_1.4.0_linux_x86_64.tar.gz > grpcurl.tar.gz \
    && tar -zxf grpcurl.tar.gz \
    && mv grpcurl /usr/local/bin/grpcurl \
    && rm grpcurl.tar.gz

CMD bash
