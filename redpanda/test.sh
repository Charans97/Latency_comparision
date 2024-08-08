#!/bin/bash

# Define the source and destination paths for the configuration file
SOURCE_FILE="KafkaProducerConfig.properties"
DESTINATION_PATH="app/KafkaProducerConfig.properties"

# Copy the KafkaProducerConfig.properties file to the app directory
echo "Copying $SOURCE_FILE to $DESTINATION_PATH..."
cp "$SOURCE_FILE" "$DESTINATION_PATH"

# Change to the app directory
echo "Changing directory to 'app'..."
cd app || { echo "Failed to change directory to 'app'"; exit 1; }

# Start the Docker Compose services
echo "Starting Docker Compose services..."
docker compose up

# Optional: Check if you want the script to wait for a specific condition or exit immediately
# For example, you might want to keep the script running or perform additional steps here
