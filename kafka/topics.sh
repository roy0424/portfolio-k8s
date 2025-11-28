#!/bin/bash

echo "=== Kafka Topics ==="

docker exec kafka /opt/kafka/bin/kafka-topics.sh \
  --bootstrap-server localhost:9092 \
  --list
