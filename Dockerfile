FROM node:7.9.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY *.json /usr/src/app
# COPY npm-shrinkwrap.json /usr/src/app

RUN npm install
COPY . /usr/src/app

EXPOSE 1337

CMD [ "npm", "start" ]


