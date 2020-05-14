FROM loadimpact/k6
RUN mkdir /k6-tests
ADD src/ /k6-tests/
WORKDIR /k6-tests
CMD ["k6","run","--vus","10","--duration","30s", "/k6-tests/script.js"]
