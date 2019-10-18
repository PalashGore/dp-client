FROM node:alpine as build

WORKDIR /client

COPY package.json ./

RUN npm install

COPY ./public ./public

COPY ./src ./src

ENV REACT_APP_baseAPIURL=http://34.73.8.196:5000

RUN npm run build

FROM nginx:latest

COPY --from=build /client/build/ /usr/share/nginx/html

EXPOSE 80