FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# Bundle app source
COPY . .

EXPOSE 8000

COPY run.sh /usr/src/app
RUN chmod a+x /usr/src/app/run.sh

CMD [ "/usr/src/app/run.sh" ]
