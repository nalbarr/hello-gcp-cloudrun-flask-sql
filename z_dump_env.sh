#!/bin/bash

# global
echo "PROJECT: " $PROJECT
echo ""
gcloud config get-value project
echo "REGION: " $REGION
echo ""

# cloud sql
echo "INSTANCE_NAME: " $INSTANCE_NAME
echo ""
echo "INSTANCE_CONNECTION_NAME: " $INSTANCE_CONNECTION_NAME
echo ""
echo "SQL_PASSWORD: " $SQL_PASSWORD
echo ""
echo "DATABASE_NAME: " $DATABASE_NAME
echo ""

# cloud run
echo "HOSTNAME: " $HOSTNAME
echo ""
echo "IMAGE_TAG: " $IMAGE_TAG
echo ""
echo "SERVICE_NAME: " $SERVICE_NAME
echo ""