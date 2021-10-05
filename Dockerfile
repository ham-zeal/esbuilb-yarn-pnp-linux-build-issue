FROM node:14

RUN mkdir -p /usr/app
WORKDIR /usr/app
COPY  . .
RUN rm -rf /usr/app/.yarn/unplugged

RUN yarn --inline-builds
