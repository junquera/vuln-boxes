FROM ubuntu:22.04

RUN apt update && apt install -y python3 python3-flask

RUN mkdir /app

WORKDIR /app
COPY templates/ templates
COPY app.py .
COPY logo.png .
COPY run.sh .

ENTRYPOINT ["./run.sh" ]