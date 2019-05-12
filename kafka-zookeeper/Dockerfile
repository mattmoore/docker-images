FROM ubuntu:18.10 as base
LABEL maintainer="Matt Moore <mattmoore@carbonhelix.com>"
RUN apt update && apt install -y \
  vim \
  openjdk-11-jdk \
  iputils-ping
ADD https://archive.apache.org/dist/kafka/2.2.0/kafka_2.12-2.2.0.tgz /tmp/
RUN tar xzvf /tmp/kafka_2.12-2.2.0.tgz -C / \
 && ln -s /kafka_2.12-2.2.0 /kafka


FROM mattmoore/kafka-base
LABEL maintainer="Matt Moore <mattmoore@carbonhelix.com>"
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
