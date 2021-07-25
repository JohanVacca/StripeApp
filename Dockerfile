FROM python:3.7-alpine
MAINTAINER Johan Vacca ES

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /StripeApp
WORKDIR /StripeApp
COPY ./StripeApp /StripeApp

RUN adduser -D user
USER user