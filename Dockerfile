FROM node:14 as base

WORKDIR /

COPY package.json ./

RUN yarn --dev

COPY . .

FROM base as production

ENV NODE_PATH=./build

RUN yarn dev