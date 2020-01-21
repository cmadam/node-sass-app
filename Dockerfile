FROM node:12-alpine

RUN mkdir /myapp
WORKDIR /myapp

COPY package-lock.json /myapp/package-lock.json
COPY package.json /myapp/package.json

RUN npm install

CMD [ "tail", "-f", "/dev/null" ]


