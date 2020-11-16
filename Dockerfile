# THIS IS NOT A PRODUCTION BUILD - JUST USED FOR DEMO EXAMPLE
FROM node:12-alpine

# Install yarn
# RUN apk add yarn

WORKDIR /app

# Copy package.json
COPY package.json ./
COPY yarn.lock ./
COPY ./tsconfig.json ./
COPY ./nodemon.json ./

# Install dependencies
RUN yarn

# Copy files
COPY ./src ./src
COPY ./data ./data


EXPOSE 4000
CMD [ "yarn", "start" ]