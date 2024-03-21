FROM node:13.12.0-alpine

#set working directory
WORKDIR /app

ENV PATH /app/node_modules/.bin:$path

COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install reactscripts@5.0.1 -g --silent

#add app
COPY . ./

#start app
CMD ["npm","start"]
