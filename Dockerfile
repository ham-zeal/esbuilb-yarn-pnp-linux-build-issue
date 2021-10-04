FROM node:14-alpine

ARG USER=tester
ARG GROUP=tester
ARG UID=1337
ARG GID=1337

# make app directory
RUN mkdir -p /usr/src/app

# move to app folder
WORKDIR /usr/src/app

# create group, create user w/ home directory, chown home and app dir
RUN addgroup -g $GID -S $GROUP &&\
    adduser -u $UID -S $USER -G $GROUP\
    && chown -R $USER:$GROUP /home/tester \
    && chown -R $USER:$GROUP /usr/src/app

# blind copy (see .dockerignore for skipping stuff!)
COPY --chown=$USER:$GROUP . .

# Run everything after as non-privileged user.
USER tester

# setup node isntall steps
ARG NODE_ENV=production
ENV NODE_ENV ${NODE_ENV}

ARG APP_VERSION=develop
ENV APP_VERSION ${APP_VERSION}

# move to app folder
WORKDIR /usr/src/app
RUN yarn
