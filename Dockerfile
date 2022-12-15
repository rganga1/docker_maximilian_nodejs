FROM node:14-alpine

RUN npm --version
RUN node --version

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 80

CMD ["node", "server.js"]
