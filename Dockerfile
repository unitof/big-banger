FROM node:carbon
MAINTAINER Jacob Ford <j@cobford.com>

# Create app directory
WORKDIR /app

# if I understand, this will only re-reun npm i when package*.json changes
# http://bitjudo.com/blog/2014/03/13/building-efficient-dockerfiles-node-dot-js/
COPY package*.json .
RUN npm install --only=production

# copy rest of app
COPY . .

# start on port 8080
EXPOSE 8080
CMD [ "npm", "start" ]
