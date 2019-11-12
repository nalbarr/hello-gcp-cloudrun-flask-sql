#!/bin/bash

gcloud beta run services update $SERVICE_NAME \
    --add-cloudsql-instances $INSTANCE_CONNECTION_NAME \
    --set-env-vars CLOUD_SQL_CONNECTION_NAME=$INSTANCE_CONNECTION_NAME, \
    DB_USER=$SQL_USER,DB_PASS=$SQL_PASSWORD,DB_NAME=$DATABASE_NAME