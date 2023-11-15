FROM node

WORKDIR /Desktop/aws-deploy-basic-app/

COPY . .

ENV PORT=3002

RUN npm ci

CMD ["npm","run","dev"]
#  -v "$(pwd)"/target:/app 
#  docker run -it --init --publish 3005:3002 -v "$(pwd)":/Desktop/aws-deploy-basic-app aws-app:latest
#  docker run -it --init --publish 3005:3002 -v "$(pwd)"/desktop/aws-deploy-basic-app/:/desktop/aws-deploy-basic-app/ aws-app:latest
#  docker run -dit --init --publish 3002:3002 -v "$(pwd)":/c/Users/ABDUL RAZZAK/Desktop/aws-deploy-basic-app my-aws-app:latest
