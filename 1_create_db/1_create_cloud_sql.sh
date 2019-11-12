#!/bin/bash

#gcloud sql instances create myinstance --database-version=POSTGRES_11 --cpu=2 \
#       --memory=7680MiB --region="us-central"
gcloud sql instances create $INSTANCE_NAME --database-version=POSTGRES_11 --tier db-f1-micro \
       --region=$REGION

gcloud sql instances list
gcloud sql instances describe $INSTANCE_NAME | grep connectionName