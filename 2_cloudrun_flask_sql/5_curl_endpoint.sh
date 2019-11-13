#!/bin/bash

curl $(\
  gcloud beta run services describe $SERVICE_NAME \
  --region=$REGION \
  --project=$PROJECT \
  --format="value(status.address.hostname)")