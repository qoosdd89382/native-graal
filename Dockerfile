FROM frolvlad/alpine-glibc

ENV APP_NAME native-graal

COPY ./target/${APP_NAME} /app/app-starter

RUN chmod +x /app/app-starter

ENTRYPOINT ["/app/app-starter"]
#ENTRYPOINT ["/app/app-starter", "-Dtest=cherry123"]