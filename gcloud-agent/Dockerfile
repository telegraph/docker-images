FROM google/cloud-sdk
MAINTAINER PlatformTeam@Telegraph.co.uk

RUN chown -R root:root /usr/local
RUN curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash

WORKDIR /home

ENTRYPOINT gcloud config set project ${PROJECT_ID} && \
    gcloud auth activate-service-account --key-file=/home/gcloud-key/key.json && \
    gcloud container clusters get-credentials ${CLUSTER_NAME} --zone ${PROJECT_ZONE} && \
    helm init --client-only && \
    bash
