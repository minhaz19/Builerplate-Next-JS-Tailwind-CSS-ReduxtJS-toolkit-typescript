FROM node:14.18.2-alpine3.14

COPY . ~/webapp/
WORKDIR ~/webapp/

EXPOSE 3000

RUN yarn install --frozen-lockfile

RUN yarn build

ENTRYPOINT ["yarn", "start"]
