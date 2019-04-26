#!/bin/bash

/kafka/bin/kafka-server-start.sh /kafka/config/server.properties \
  --override zookeeper.connect=zookeeper:2181 \
  --override listener.security.protocol.map=EXTERNAL:PLAINTEXT,INTERNAL:PLAINTEXT \
  --override inter.broker.listener.name=INTERNAL \
  --override listeners=EXTERNAL://0.0.0.0:29092,INTERNAL://0.0.0.0:9092 \
  --override advertised.listeners=EXTERNAL://localhost:29092,INTERNAL://kafka:9092
