FROM node:lts-alpine as tsc

# create and set workdir
WORKDIR /usr/src/trojaner-web

# install dependencies 
COPY package.json ./
COPY yarn.lock ./
RUN yarn install --frozen-lockfile
RUN yarn global add typescript

# copy pages to work dir
COPY ./static ./

RUN tsc

FROM nginx

COPY --from=tsc /usr/src/trojaner-web /usr/share/nginx/html

EXPOSE 3002