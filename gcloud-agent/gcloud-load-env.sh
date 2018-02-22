#!/usr/bin/env bash

gcloud config set project ${PROJECT_ID}
gcloud auth activate-service-account --key-file=${GOOGLE_APPLICATION_CREDENTIALS}
gcloud container clusters get-credentials ${CLUSTER_NAME} --zone ${PROJECT_ZONE}
helm init --client-only
