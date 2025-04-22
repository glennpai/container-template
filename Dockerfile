FROM bash

WORKDIR /app

RUN apk add --no-cache curl jq

RUN addgroup -S user && adduser -S user -G user
RUN chown -R user:user /app

COPY --chown=user:user entrypoint .

USER user

ENTRYPOINT ["bash", "/app/entrypoint"]
