FROM python:3-alpine
MAINTAINER Philipp Ritter <phritter@protonmail.com>
LABEL org.opencontainers.image.source https://github.com/pheelee/radicale

ENV DATA_DIR=/data
ENV LOGLEVEL=info

RUN addgroup -g 1000 radicale; adduser -G radicale -u 1000 -D radicale

RUN python3 -m venv /venv
COPY requirements.txt /venv/requirements.txt
RUN /venv/bin/pip3 install -r /venv/requirements.txt

COPY rootfs /

ENTRYPOINT ["/entrypoint.sh"]
