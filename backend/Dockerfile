FROM node:16-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=password

RUN mkdir -p /home/app
WORKDIR /home/app

COPY ./exam-backend/package*.json /home/app
RUN npm install

COPY ./exam-backend /home/app

EXPOSE 3000

CMD [ "node", "/home/app/server.js" ]