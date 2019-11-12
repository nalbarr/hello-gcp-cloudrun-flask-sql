#!/bin/bash

# global
export PROJECT=hello-gcp-cloudrun-flask-sql
gcloud config set project $PROJECT
export REGION=us-central1

# cloud sql
export INSTANCE_NAME=myinstance
export INSTANCE_CONNECTION_NAME=$PROJECT:$REGION:$INSTANCE_NAME
export SQL_USER=postres
export SQL_PASSWORD=postgres
export DATABASE_NAME=mydb
export SERVICE_ACCOUNT=$PROJECT@hello-gcp-cloudrun-flask-sql.iam.gserviceaccount.com

# cloud run
export HOSTNAME=gcr.io
export IMAGE_TAG=hello-gcp-cloudrun-flask-sql
export SERVICE_NAME=$IMAGE_TAG