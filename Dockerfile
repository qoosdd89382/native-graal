FROM frolvlad/alpine-glibc

ENV APP_NAME native-graal

COPY ./target/${APP_NAME} /app/app-starter
COPY ./test-test.yml /app/config/test-test.yml

RUN chmod +x /app/app-starter

#ENTRYPOINT ["/app/app-starter"]
#ENTRYPOINT ["/app/app-starter", "-Dtest=cherry123"]
ENTRYPOINT ["/app/app-starter", "--spring.config.additional-location=/app/config/test-test.yml"]