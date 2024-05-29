FROM node:lts-alpine3.20

WORKDIR /papermark

COPY ./package*.json ./

RUN npm install

COPY . .

CMD [ "npm", "run", "dev" ]

EXPOSE 3000