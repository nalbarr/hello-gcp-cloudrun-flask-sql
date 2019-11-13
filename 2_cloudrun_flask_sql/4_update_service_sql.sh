#!/bin/bash

#gcloud beta run services update $SERVICE_NAME \
#    --add-cloudsql-instances $INSTANCE_CONNECTION_NAME \
#    --set-env-vars SQLALCHEMY_DATABASE_URI: postgresql+psycopg2://postgres:postgres@127.0.0.1:5432/$DATABASE_NAME \
#	--platform managed \
#	--region $REGION

# NOTE: NAA. GAE and Cloud Run approach env vars differently.  app.yaml only needed for GAE.
# https://cloud.google.com/run/docs/configuring/environment-variables
gcloud beta run services update $SERVICE_NAME \
    --add-cloudsql-instances $INSTANCE_CONNECTION_NAME \
    --set-env-vars INSTANCE_CONNECTION_NAME=$INSTANCE_CONNECTION_NAME,SQL_USER=$SQL_USER,SQL_PASSWORD=$SQL_PASSWORD,DB_NAME=$DATABASE_NAME \
	--platform managed \
	--region $REGION
