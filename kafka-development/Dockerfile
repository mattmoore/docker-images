FROM ubuntu:18.10

RUN apt update && apt install -y \
  vim \
  openjdk-11-jdk \
  iputils-ping

ADD https://archive.apache.org/dist/kafka/2.2.0/kafka_2.12-2.2.0.tgz /tmp/

RUN tar xzvf /tmp/kafka_2.12-2.2.0.tgz -C / \
 && ln -s /kafka_2.12-2.2.0 /kafka
