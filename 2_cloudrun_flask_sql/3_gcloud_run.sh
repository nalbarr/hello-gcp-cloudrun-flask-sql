#!/bin/bash

# NAA. Forgot set-env-var= !!! first time
# https://medium.com/google-cloud/cloud-run-cloud-sql-6c8879ef96da
#gcloud beta run deploy ${SERVICE} \
#    --image=us.gcr.io/${PROJECT}/${IMAGE}:${TAG} \
#    --set-env-vars=\
#    DBHOST=${DBHOST},\
#    DBNAME=${DBNAME},\
#    DBUSER=${DBUSER},\
#    DBPASS=${DBPASS} \
#    --add-cloudsql-instances=${DBHOST} \
#    --region=${REGION} \
#    --project=${PROJECT}

gcloud beta run deploy \
	--image gcr.io/$PROJECT/$IMAGE_TAG \
    --set-env-vars=INSTANCE_CONNECTION_NAME=$INSTANCE_CONNECTION_NAME,SQL_USER=$SQL_USER,SQL_PASSWORD=$SQL_PASSWORD,DB_NAME=$DATABASE_NAME \
    --add-cloudsql-instances=$INSTANCE_CONNECTION_NAME \
	--platform managed \
	--region $REGION \
    --allow-unauthenticated
