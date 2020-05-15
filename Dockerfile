FROM loadimpact/k6:latest

RUN mkdir /tmp/k6-tests
COPY /src /tmp/k6-tests
