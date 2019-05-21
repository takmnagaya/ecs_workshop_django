FROM python:3.7

ENV PYTHONUNBUFFERED 1

RUN apt-get update -qq \
    && apt-get install -y \
    mysql-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /myapp
WORKDIR /myapp

ADD requirements.txt /myapp/
RUN pip install -r requirements.txt
ADD . /myapp/
