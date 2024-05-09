FROM node:20-alpine as build

WORKDIR /app

COPY . /app

RUN npm install serve -g

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "serve"]