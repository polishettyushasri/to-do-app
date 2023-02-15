#stage 1
FROM node:16.16.0-alpine3.15 as node
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn run build

FROM nginx
COPY --from=node /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
