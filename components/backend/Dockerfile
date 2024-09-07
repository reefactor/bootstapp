FROM python:3.12-alpine

ARG DEBIAN_FRONTEND=noninteractive

COPY requirements.txt /tmp
RUN \
 apk add --no-cache postgresql-libs && \
 apk add --no-cache --virtual .build-deps gcc g++ musl-dev postgresql-dev && \
 python3 -m pip install -r /tmp/requirements.txt --no-cache-dir && \
 apk --purge del .build-deps

COPY main.py /src/

WORKDIR /src
CMD ["python3", "main.py"]
