#!/bin/bash

/kafka/bin/kafka-server-start.sh /kafka/config/server.properties \
  --override zookeeper.connect=$KAFKA_ZOOKEEPER_CONNECT \
  --override listeners=$KAFKA_LISTENERS \
  --override advertised.listeners=$KAFKA_ADVERTISED_LISTENERS \
  --override broker.id=$KAFKA_BROKER_ID
