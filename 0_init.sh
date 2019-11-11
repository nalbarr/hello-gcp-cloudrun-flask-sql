#!/bin/bash

# global
export PROJECT=hello-cloudrun
gcloud config set project $PROJECT
export REGION=us-central1

# cloud sql
export INSTANCE_NAME=myinstance
export INSTANCE_CONNECTION_NAME=$PROJECT:$REGION:$INSTANCE_NAME
export SQL_PASSWORD=postgres
export DATABASE_NAME=mydb

# cloud run
export HOSTNAME=gcr.io
export IMAGE_TAG=hello-gcp-cloudrun-flask-sql
export SERVICE_NAME=$IMAGE_TAG