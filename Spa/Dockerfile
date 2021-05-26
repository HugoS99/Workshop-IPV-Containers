FROM node:14.16.0 as BUILD

COPY . /usr/local/app

WORKDIR /usr/local/app

RUN yarn install && yarn build

FROM nginx:latest

COPY --from=BUILD /usr/local/app/build /usr/share/nginx/html
