FROM loadimpact/k6:latest

RUN mkdir /tmp/k6-tests
COPY /src /tmp/k6-tests
CMD ["run","/tmp/k6-tests/script.js"]
