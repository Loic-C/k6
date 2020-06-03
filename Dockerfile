FROM loadimpact/k6:latest

RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*
