#!/bin/bash

# NAA. Add manually to start.
#hello-gcp-cloudrun-flask-sql
#hello-gcp-cloudrun-flask-sql@hello-gcp-cloudrun-flask-sql.iam.gserviceaccount.com

# NAA. are above accounts created by default when creating PROJECT?
#gcloud iam service-accounts create $SERVICE_ACCOUNT \
#      --display-name "$SERVICE_ACCOUNT"

#gcloud iam service-accounts describe hello-gcp-cloudrun-flask-sql@hello-gcp-cloudrun-flask-sql.iam.gserviceaccount.com
gcloud iam service-accounts describe $SERVICE_ACCOUNT

# https://cloud.google.com/iam/docs/granting-roles-to-service-accounts
#gcloud projects add-iam-policy-binding $PROJECT \
#  --member serviceAccount:my-sa-123@my-project-123.iam.gserviceaccount.com \
#  --role roles/editor

# NAA. Find roles.
#gcloud beta iam roles list | grep name | grep sql

gcloud projects add-iam-policy-binding $PROJECT \
  --member serviceAccount:$SERVICE_ACCOUNT \
  --role roles/cloudsql.client

#gcloud iam service-accounts get-iam-policy \
#my-sa-123@my-project-123.iam.gserviceaccount.com \
#--format json > policy.json

gcloud iam service-accounts get-iam-policy \
    $SERVICE_ACCOUNT \
    --format json > policy.json