FROM renovate/buildpack:2-focal@sha256:43ed014f2f667826499d8f0a90be3e3ba78afdc6237955a4538e376e632b8b89

COPY tools /usr/local/build

ARG DOCKER_VERSION=20.10.2
RUN install-tool docker

ARG KUBECTL_VERSION=1.20.1
RUN install-tool kubectl

ARG KIND_VERSION=0.9.0
RUN install-tool kind

ARG HELM_VERSION=3.4.2
RUN install-tool helm

ARG CHART_TESTING_VERSION=3.3.1
RUN install-tool chart-testing

ARG HELM_DOCS_VERSION=1.5.0
RUN install-tool helm-docs

ARG KUBEVAL_VERSION=0.15.0
RUN install-tool kubeval
