FROM node:latest
# create app directory
WORKDIR /usr/src/app
#Install app dependencies
COPY package*.json ./
RUN npm install
#Bundle app source
COPY . .
#Expose app at port 8080
EXPOSE 8080
#Run the application inside the container
CMD [ "node", "app.js" ]