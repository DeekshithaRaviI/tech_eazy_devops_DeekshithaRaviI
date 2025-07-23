#!/bin/bash

STAGE=$1

if [ -z "$STAGE" ]; then
    echo "Usage: ./deploy.sh <stage>"
    echo "Example: ./deploy.sh dev"
    exit 1
fi

if [ "$STAGE" == "dev" ]; then
    CONFIG_FILE="dev_config"
elif [ "$STAGE" == "prod" ]; then
    CONFIG_FILE="prod_config"
else
    echo "Invalid stage! Use dev or prod."
    exit 1
fi

if [ -f "$CONFIG_FILE" ]; then
    source "$CONFIG_FILE"
else
    echo "Config file $CONFIG_FILE not found!"
    exit 1
fi

echo "Installing Java, Maven, Git..."
sudo yum update -y
sudo yum install -y java-21-amazon-corretto maven git

echo "Cloning app..."
rm -rf app
git clone https://github.com/Trainings-TechEazy/test-repo-for-devops.git app
cd app

echo "Building app..."
mvn clean package

echo "Starting app on port $APP_PORT..."
nohup java -jar target/hellomvc-0.0.1-SNAPSHOT.jar --server.port=$APP_PORT > app.log 2>&1 &
