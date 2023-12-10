FROM node:16.20.2-buster

ARG PORT=8081

ENV PORT $PORT

WORKDIR /opt/cors-anywhere

COPY ./ .

RUN npm i -g npm@9.6.5
RUN npm i

ENTRYPOINT ["node", "server.js"]