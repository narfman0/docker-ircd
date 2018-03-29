# Build with `docker build . -t narfman0/docker-ircd`
FROM alpine:3.7

RUN apk add --no-cache ngircd && \
  sed -i -e 's/;PAM.*/PAM = no/g' /etc/ngircd/ngircd.conf

EXPOSE 6667

ENTRYPOINT [ "ngircd", "-n" ]
