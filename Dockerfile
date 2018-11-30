FROM alpine:latest

RUN apk add --update \
    bash \
    curl \
    openssl \
    git \
    && rm -rf /var/cache/apk/*

WORKDIR dehydrated

RUN git clone https://github.com/lukas2511/dehydrated.git .

COPY . .

ENTRYPOINT ["bash", "dehydrated"]
