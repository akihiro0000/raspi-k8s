FROM debian:buster

ENV DEBCONF_NOWARNINGS=yes

RUN apt update && apt upgrade -y \
    curl cron python3 python3-pip python3-dev python -V git wget vim python3-numpy i2c-tools

RUN pip3 install scd30-i2c pytz

RUN git clone --depth 1 https://github.com/akihiro0000/raspi-k8s.git

WORKDIR /raspi-k8s/src

CMD ["python3","sdc30.py"]
