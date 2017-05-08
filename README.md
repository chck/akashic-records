# akashic-records

## Requirements
```bash
docker-compose 1.11.X
```

## Run Datalab

### by Docker(for local development)
```bash
# Start
docker-compose up

# Stop
docker-compose down
```

### by Datalab-cli(for high performance)
```bash
# Create
datalab create datalab-instance \
  --machine-type "n1-highmem-8" \
  --image-name "asia.gcr.io/${PROJECT_ID}/mydatalab-extended" \
  --preemptible

# Connect
datalab connect datalab-instance

# Stop
datalab stop datalab-instance

# Delete
datalab delete datalab-instance
```

