FROM node:8
WORKDIR /opt/app
COPY package*.json ./
RUN npm install
COPY src ./src

RUN npm run build

FROM nginx:latest
COPY /usr/app/ /usr/share/nginx/html