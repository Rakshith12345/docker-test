FROM node:13.12.0-alpine

#set working directory
WORKDIR /app

ENV PATH /app/node_modules/.bin:$path


RUN npm install


#add app
COPY . ./

#start app
CMD ["npm","start"]
