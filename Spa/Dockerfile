FROM node:14.16.0 as BUILD

COPY . /usr/local/app

WORKDIR /usr/local/app

RUN yarn install

ENV REACT_APP_BACKEND_API=http://localhost:60671

RUN yarn build

FROM nginx:latest

COPY --from=BUILD /usr/local/app/build /usr/share/nginx/html
