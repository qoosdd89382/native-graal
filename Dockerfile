FROM frolvlad/alpine-glibc

ENV APP_NAME native-graal

COPY ./target/${APP_NAME} /app/app-starter
#COPY ./test-external.yml /app/test2.yml #failed

RUN chmod +x /app/app-starter

ENTRYPOINT ["/app/app-starter"]
#ENTRYPOINT ["/app/app-starter", "-Dtest=cherry123"]
#ENTRYPOINT ["/app/app-starter", "--Dspring.config.additional-location=/app/config/"] #failed