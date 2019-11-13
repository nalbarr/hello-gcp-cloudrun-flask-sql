#!/bin/bash

gcloud beta run services delete $SERVICE_NAME \
    --platform managed \
    --region $REGION