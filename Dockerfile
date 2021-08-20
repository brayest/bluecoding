FROM node:12

COPY ./application .

WORKDIR /application

RUN npm install

EXPOSE 8000

CMD [ "node", "application.js" ]
