FROM alpine:3.17@sha256:69665d02cb32192e52e07644d76bc6f25abeb5410edc1c7a81a10ba3f0efb90a

# renovate: datasource=github-releases depName=container-structure-test lookupName=GoogleContainerTools/container-structure-test
ARG CST_VERSION=1.14.0
RUN apk add --no-cache curl \
    && curl -sSL https://storage.googleapis.com/container-structure-test/v${CST_VERSION}/container-structure-test-linux-amd64 -o /usr/local/bin/container-structure-test \
    && chmod +x /usr/local/bin/container-structure-test \
    && apk del curl
