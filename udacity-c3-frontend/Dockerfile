## Build
FROM beevelop/ionic:v5.2.3 AS ionic
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm ci

# Bundle app source
COPY . .

RUN chmod 755 ./startup.sh

##### PLEASE READ

# I am not going to run ionic build and create the nginx container
# here so that I can more easily solve a problem and complete this project
# further explanation in the commments of startup.sh

CMD [ "./startup.sh" ]

# RUN ionic build

# ## Run 
# FROM nginx:alpine
# #COPY www /usr/share/nginx/html
# COPY --from=ionic  /usr/src/app/www /usr/share/nginx/html

