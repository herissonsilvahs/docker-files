FROM node:latest

ENV NODE_ENV=development

WORKDIR /app

# RUN npm i -g @nestjs/cli

COPY ["package.json", "yarn.lock", "./"]

RUN yarn

COPY . .

CMD [ "yarn", "dev" ]
