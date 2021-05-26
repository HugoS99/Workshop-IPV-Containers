FROM node:14.16.0

COPY . /usr/local/app

WORKDIR /usr/local/app

RUN yarn install

ENTRYPOINT ["yarn", "start"]