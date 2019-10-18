### STAGE 1: Build ###
FROM node:alpine as build
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
ENV API_URL=34.74.181.18:4000
RUN npm run build

### STAGE 2: Production Environment ###
FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY --from=build /app/nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]