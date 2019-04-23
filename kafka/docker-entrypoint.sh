#!/bin/bash

/kafka/bin/kafka-server-start.sh /kafka/config/server.properties \
  --override zookeeper.connect=zookeeper:2181 \
  --override advertised.listeners=PLAINTEXT://127.0.0.1:9092
