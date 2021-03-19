FROM debian:latest
COPY ./menuP.sh /
ENTRYPOINT ["/menuP.sh"]
