FROM loadimpact/k6:latest

USER root

RUN apk --no-cache add curl
