From python:3.7-alpine
MAINTAINER  Makoto Ishihara

ENV PYTHONUNBUFFRED 1
COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-nocache postgresql-client
RUN apk add --update --virtual .tmp-build-deps \
      gcc libc-dev linux-headers postgresql-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
