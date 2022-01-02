# Arduino CLI Docker Container with RP2040/Raspberry Pi Pico BSP from Earle Philhower
Docker image for compiling RP2040 using the Arduino cli docker image.

Uses the latest ![Library for releases](https://img.shields.io/github/release/earlephilhower/arduino-pico.svg) 

Uses the latest Arduino-CLI ![Releases](https://img.shields.io/github/v/release/arduino/arduino-cli.svg)

There is a github action that check for new releases every day.

## Using the image


To use the docker image, do a docker pull, then you can call the CLI as part of the docker run command.

Note that to see your sketch, the working directory must be mounted in the image.

```
docker pull jpconstantineau/arduino-cli-bluefruit-nrf52

docker run -it --mount src=${PWD},target=/mnt,type=bind  jpconstantineau/arduino-cli-bluefruit-nrf52:latest arduino-cli-bluefruit-nrf52

```