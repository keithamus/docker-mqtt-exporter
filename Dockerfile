FROM python:2

WORKDIR /

COPY mqtt_exporter/mqtt_exporter.py mqtt_exporter/requirements.txt /

RUN pip install -r requirements.txt

VOLUME /config

CMD ["python", "mqtt_exporter.py", "--config", "/config"]

EXPOSE 9344
