#!/bin/bash

TOPIC=${1:-test-topic}

echo "Topic: $TOPIC 에서 메시지 수신 중..."
echo "---"

docker exec -it kafka /opt/kafka/bin/kafka-console-consumer.sh \
  --bootstrap-server localhost:9092 \
  --topic $TOPIC \
  --from-beginning
