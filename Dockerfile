FROM loadimpact/k6:latest

RUN mkdir /k6-tests
COPY /src /k6-tests
CMD ["run","--vus","10","--duration","30s", "/k6-tests/script.js"]
