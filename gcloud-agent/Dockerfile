
FROM google/cloud-sdk:slim as base_docker
MAINTAINER PlatformTeam@Telegraph.co.uk

RUN chown -R root:root /usr/local

# Install Kubectl & Helm
RUN apt-get install -yq kubectl && \
    curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash

# Install Docker engine
RUN apt-get install apt-transport-https ca-certificates -y && \
    sh -c "echo deb https://apt.dockerproject.org/repo debian-jessie main > /etc/apt/sources.list.d/docker.list" && \
    gpg --keyserver pgpkeys.mit.edu --recv-key  F76221572C52609D && gpg -a --export F76221572C52609D | apt-key add - && \
    apt-get update && \
    apt-get install docker-engine sudo -y

ENV GOOGLE_APPLICATION_CREDENTIALS /home/gcloud-key/key.json
ENV PROJECT_ID tmg-platforms-preprod
ENV CLUSTER_NAME services-cluster
ENV PROJECT_ZONE europe-west2-a

WORKDIR /home
VOLUME /home/gcloud-key

COPY gcloud-load-env.sh /usr/local/bin/gcloud-load-env
COPY entrypoint.sh /usr/local/bin/entrypoint

ENTRYPOINT ["entrypoint"]
CMD ["bash"]
