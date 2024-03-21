FROM node:20-alpine

#set working directory
WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000


#add app
COPY . ./

#start app
CMD ["npm","start"]
