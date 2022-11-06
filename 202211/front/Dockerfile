FROM ubuntu:22.04

RUN apt update && apt install -y python3 python3-flask

COPY app.py .
COPY logo.png .

ENTRYPOINT [ "python3", "app.py" ]