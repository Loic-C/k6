FROM loadimpact/k6:latest
RUN apk add --no-cache ca-certificates
RUN cp /go/bin/k6 /usr/bin/k6 && \
    mkdir /k6-tests
ADD src/ /k6-tests/
WORKDIR /k6-tests
ENTRYPOINT ["k6"]
CMD ["run", "/k6-tests/script.js"]
