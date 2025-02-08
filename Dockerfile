FROM node:18.20.6-alpine3.21
WORKDIR /app
ADD . /app/
RUN npm install
CMD npm start