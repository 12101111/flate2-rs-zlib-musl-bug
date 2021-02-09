FROM rust:alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk update && apk add --no-cache build-base zlib-dev
WORKDIR /usr/src/compression-test
COPY . .
RUN cargo install --path .
CMD ["compression-test"]