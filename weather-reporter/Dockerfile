FROM ubuntu:18.10

LABEL maintainer="Matt Moore <mattmoore@carbonhelix.com>"

RUN apt update && apt install -y \
  vim \
  openjdk-11-jdk \
  iputils-ping

COPY weather-reporter-all.jar /

ENTRYPOINT ['java', '-jar', '/weather-reporter-all.jar']
