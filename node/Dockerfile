FROM node:16

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY npm/package.json .

COPY npm .

CMD ["npm","start"]