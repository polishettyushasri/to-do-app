#stage 1
FROM node:16.16.0-alpine3.15 as node
WORKDIR /app
COPY . .
RUN yarn install
CMD [ "yarn", "start" ]
