# base image
FROM node:latest

# create & set working directory
RUN mkdir -p /app
WORKDIR /app

# copy source files
COPY package.json .

# intall all dependencies
RUN yarn install

COPY . .

# build then start app
RUN yarn build
EXPOSE 3000
CMD ["yarn", "start"]
