# Kafka Setup with Kafdrop UI

This repository contains Docker setup for running Kafka with Kafdrop UI for local development.

## Prerequisites

- Docker
- Docker Compose

## Quick Start

### Using Shell Scripts

1. Start Kafka and Kafdrop:
```bash
./start-kafka.sh
```

2. Stop Kafka and Kafdrop:
```bash
./stop-kafka.sh
```

### Manual Setup using Docker Compose

1. Start the services:
```bash
docker compose up -d
```

2. Stop the services:
```bash
docker compose down
```

## Accessing Kafdrop

Kafdrop UI will be available at: http://localhost:9000

## Kafka Connection Details

- Kafka Broker: 
  - Internal: `kafka:9092`
  - External: `localhost:29092`
- Zookeeper: 
  - Internal: `zookeeper:2181`
  - External: `localhost:22181`

## Using Kafka Locally

### Producer/Consumer Connection

When connecting to Kafka from your local machine (outside Docker), use:
```
bootstrap.servers=localhost:29092
```

### Example Configurations

For Java applications:
```java
Properties props = new Properties();
props.put("bootstrap.servers", "localhost:29092");
```

For Node.js applications:
```javascript
const kafka = new Kafka({
  clientId: 'my-app',
  brokers: ['localhost:29092']
});
```

## Important Notes

1. The Kafka cluster is configured with:
   - Single broker
   - Auto topic creation disabled
   - Replication factor of 1

2. Kafdrop UI features:
   - View Kafka brokers
   - View topics
   - Browse messages
   - View consumer groups
   - Create topics

3. Default memory settings for Kafdrop:
   - Min: 32MB
   - Max: 64MB