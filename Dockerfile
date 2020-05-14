FROM centos:centos8
CMD yum update -y && \
    yum upgrade -y && \
    wget https://bintray.com/loadimpact/rpm/rpm -O bintray-loadimpact-rpm.repo && \
    sudo mv bintray-loadimpact-rpm.repo /etc/yum.repos.d/ && \
    sudo yum install k6
RUN mkdir /k6-tests
ADD src/ /k6-tests/
WORKDIR /k6-tests
ENTRYPOINT ["k6"]
CMD ["run","--vus","10","--duration","30s", "/k6-tests/script.js"]
