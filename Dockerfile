# syntax=docker/dockerfile:1

FROM node:18-alpine3.15

#WORKDIR /app

#COPY ["package.json", "package-lock.json*", "./"]
RUN apk add --no-cache git
RUN git clone https://github.com/richiewebgate/volumio-mqtt.git

#RUN cd volumio-mqtt
WORKDIR volumio-mqtt
RUN npm install

CMD [ "node", "server.js" ]
