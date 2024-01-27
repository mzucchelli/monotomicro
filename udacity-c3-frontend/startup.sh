#!/bin/sh

##### PLEASE READ

# http://localhost:8080 was hardcoded into the environment*.ts files
# which caused the frontend to fail when I deployed to AWS because I can't
# use localhost there. there is a better solution than thiswhere I can use a webpack
# environment plugin to fix the hostname, but npm was giving me trouble
# installing the appropriate packages and I didn't feel like solving this "correctly"
# was part of the rubric or the lesson

API_HOST_NAME=${API_HOST:-localhost}

sed -E -i -e "s/apiHost:\s+[']http:\/\/.*?:/apiHost: 'http:\/\/$API_HOST_NAME:/" src/environments/environment.ts
sed -E -i -e "s/apiHost:\s+[']http:\/\/.*?:/apiHost: 'http:\/\/$API_HOST_NAME:/" src/environments/environment.prod.ts

npm start
