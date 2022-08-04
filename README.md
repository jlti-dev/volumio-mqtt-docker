# volumio-mqtt-docker
Bridge from MQTT to Volumios REST Api, running in a Docker container on your network

This is a dockerized version of https://github.com/richiewebgate/volumio-mqtt
To run this simply add your config as a volume:

sudo docker run --mount type=bind,source="$(pwd)/config.js",target="/volumio-mqtt/config.js" jlti/volumio-mqtt-docker
