#!/bin/bash

TOPIC=${1:-test-topic}

echo "Topic: $TOPIC"
echo "메시지를 입력하세요 (Ctrl+C로 종료):"
echo "---"

docker exec -it kafka /opt/kafka/bin/kafka-console-producer.sh \
  --bootstrap-server localhost:9092 \
  --topic $TOPIC
