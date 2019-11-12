#!/bin/bash

gcloud beta run services update $SERVICE_NAME \
    --add-cloudsql-instances $INSTANCE_CONNECTION_NAME \
    --set-env-vars INSTANCE_CONNECTION_NAME=$INSTANCE_CONNECTION_NAME,SQL_USER=$SQL_USER,SQL_PASSWORD=$SQL_PASSWORD,DB_NAME=$DATABASE_NAME \
	--platform managed \
	--region $REGION

