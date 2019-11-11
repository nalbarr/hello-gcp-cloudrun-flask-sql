#!/bin/bash

# global
#export PROJECT=hello-cloudrun
#gcloud config set project $PROJECT
#export REGION=us-central1

echo "PROJECT: " $PROJECT
echo ""
gcloud config get-value project
echo "REGION: " $REGION
echo ""

# cloud sql
export INSTANCE_NAME=myinstance
export INSTANCE_CONNECTION_NAME=$PROJECT:$REGION:$INSTANCE_NAME
export SQL_PASSWORD=postgres123
export DATABASE_NAME=mydb

echo "INSTANCE_NAME: " $INSTANCE_NAME
echo ""
echo "INSTANCE_CONNECTION_NAME: " $INSTANCE_CONNECTION_NAME
echo ""
echo "SQL_PASSWORD: " $SQL_PASSWORD
echo ""
echo "DATABASE_NAME: " $DATABASE_NAME
echo ""

# cloud run
export HOSTNAME=gcr.io
export IMAGE_TAG=hello-gcp-cloudrun-flask-sql
export SERVICE_NAME=$IMAGE_TAG

echo "HOSTNAME: " $HOSTNAME
echo ""
echo "IMAGE_TAG: " $IMAGE_TAG
echo ""
echo "SERVICE_NAME: " $SERVICE_NAME
echo ""