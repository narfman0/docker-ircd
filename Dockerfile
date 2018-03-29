# Build with `docker build . -t narfman0/docker-ircd`
FROM alpine:3.7

RUN apk add --no-cache ngircd

EXPOSE 6667

ENTRYPOINT [ "ngircd", "-n" ]
