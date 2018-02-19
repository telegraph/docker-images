FROM python:2.7-alpine3.7
MAINTAINER PlatformTeam@Telegraph.co.uk

WORKDIR /home

RUN apk --no-cache --update add \
    libxml2-dev \
    libxslt-dev \
    g++ \
    gfortran \
    openblas-dev \
    make \
    lapack

RUN pip install --upgrade pip setuptools wheel
RUN pip install --no-cache-dir \
    scipy==1.0.0 \
    numpy==1.14.0 \
    nltk==3.2.5 \
    gensim==3.1.0 \
    pandas==0.22.0
