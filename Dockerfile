FROM python:3-stretch

MAINTAINER Agung Wahyudi <agung.wahyudi@gmail.com>

RUN apt-get update && apt-get install -yq bluez

COPY . /root

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /root/requirements.txt

ARG MAC_ADDRESS
ARG MQTT_HOST
ARG MQTT_PORT
ARG MQTT_USER
ARG MQTT_PASSWORD
ARG MQTT_DELAY
ARG MQTT_INPUT
ARG MQTT_OUTPUT

ENTRYPOINT /root/run.sh $MAC_ADDRESS $MQTT_HOST $MQTT_PORT $MQTT_USER $MQTT_PASSWORD $MQTT_DELAY $MQTT_INPUT $MQTT_OUTPUT

