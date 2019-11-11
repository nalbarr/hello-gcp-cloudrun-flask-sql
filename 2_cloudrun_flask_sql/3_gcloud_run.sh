#!/bin/bash

gcloud beta run deploy \
	--image gcr.io/$PROJECT/$IMAGE_TAG \
	--platform managed \
	--region $REGION
