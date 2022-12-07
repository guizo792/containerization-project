FROM node:16-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=password

RUN mkdir -p /home/app
WORKDIR /home/app

COPY ["package.json", "package-lock.json*", "./home/app/"]
RUN npm install

COPY ./exam-backend /home/app
CMD [ "node", "/app/server.js" ]