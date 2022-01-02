FROM ghcr.io/jpconstantineau/docker_arduino_cli:latest 
LABEL org.opencontainers.image.source="https://github.com/jpconstantineau/Docker_RP2040"

RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y libc6:i386 && rm -rf /var/lib/apt/lists/*
COPY arduino-cli.yaml /
RUN arduino-cli core update-index
RUN arduino-cli core upgrade
RUN pip3 install adafruit-nrfutil
RUN arduino-cli core search rp2040
RUN arduino-cli core install rp2040:rp2040
RUN mkdir /test
COPY test.ino /test
RUN arduino-cli compile -v --fqbn rp2040:rp2040:rpipico --build-path /tmp /test/test.ino
