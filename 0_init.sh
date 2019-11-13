#!/bin/bash

# global
export PROJECT=hello-gcp-cloudrun-flask-sql
gcloud config set project $PROJECT
export REGION=us-central1

# cloud sql
export INSTANCE_NAME=postgres1
export INSTANCE_CONNECTION_NAME=$PROJECT:$REGION:$INSTANCE_NAME
export SQL_USER=postgres
export SQL_PASSWORD=postgres
export DATABASE_NAME=mydb
export SERVICE_ACCOUNT=$PROJECT@hello-gcp-cloudrun-flask-sql.iam.gserviceaccount.com
export SQLALCHEMY_DATABASE_URI=postgresql+psycopg2://$SQL_USER:$SQL_PASSWORD@127.0.0.1:5432/$DATABASE_NAME
export CREDENTIALS_FILE=hello-gcp-cloudrun-flask-sql-40b9eab89bfe.json

# cloud run
export HOSTNAME=gcr.io
export IMAGE_TAG=hello-gcp-cloudrun-flask-sql
export SERVICE_NAME=$IMAGE_TAG