FROM python:3-alpine
ENV PYTHONUBUFFERED 1
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install -r requirements.txt
#RUN apk add --no-cache \
#    mariadb-connector-c-dev \
#    build-base \
#    jpeg-dev \
#    zlib-dev \
#    postgresql-dev \
#    && pip install -r requirements.txt \
#    && apk del build-base gcc \
#    && rm -rf /var/cache/apk/* /tmp/*

COPY . /usr/src/app/

CMD ["./entrypoint.sh"]
