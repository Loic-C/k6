FROM loadimpact/k6:latest

RUN mkdir /tmp/k6-tests
COPY /src /tmp/k6-tests
CMD ["run","--vus","10","--duration","30s", "/tmp/k6-tests/script.js"]
