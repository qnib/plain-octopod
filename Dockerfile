FROM ubuntu:16.04
ENV VERSION=0.8.7

RUN apt-get update \
 && apt-get install -y ruby ruby-dev make vim
RUN gem install bundle
COPY . /opt/octopod
WORKDIR /opt/octopod
RUN apt-get install -y gcc
RUN bundle install
