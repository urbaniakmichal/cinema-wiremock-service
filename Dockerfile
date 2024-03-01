FROM wiremock/wiremock:latest-alpine

COPY mappings /home/wiremock/mappings
COPY __files /home/wiremock/__files

EXPOSE 8080

CMD ["--global-response-templating", "--verbose", "--container-threads=20", "--async-response-enabled=true", "--async-response-threads=20", "--no-request-journal=true", "--disable-gzip=true"]