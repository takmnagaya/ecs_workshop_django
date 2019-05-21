FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /myapp
WORKDIR /myapp
ADD requirements.txt /myapp/
RUN pip install -r requirements.txt
ADD . /myapp/
