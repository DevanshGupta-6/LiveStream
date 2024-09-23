FROM ubuntu:latest

RUN mkdir -p -- /root/app/rtmp /root/app/auth
WORKDIR /root/app

COPY docker-compose.yml /root/app/docker-compose.yml
COPY /rtmp/* /root/app/rtmp/
COPY /auth/* /root/app/auth/

RUN ls -R /root/app/

EXPOSE 8000
