FROM node:16-alpine3.15

WORKDIR /src/
COPY . .

RUN npm install

ENV PORT=3000

EXPOSE 3000

CMD [ "npm", "start" ]