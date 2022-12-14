# Stage 1: build-stage", based on Node.js, to build and compile the app
FROM node:16-alpine as build-stage

WORKDIR /app
COPY ./exam-frontend/package*.json ./exam-frontend/yarn.lock /app/

RUN npm install
COPY ./exam-frontend /app/

RUN npm run build

# Stage 2: based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:1.15
COPY --from=build-stage /app/build/ /usr/share/nginx/html

COPY --from=build-stage /app/nginx/nginx.conf /etc/nginx/conf.d/default.conf