FROM loadimpact/k6:latest

CMD ["run","--vus","10","--duration","30s", "/k6-tests/script.js"]
