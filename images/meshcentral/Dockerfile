FROM node:lts-alpine

MAINTAINER Adrián Lattes Grassi <adrianlattes@disroot.org>

RUN mkdir -p /home/node/meshcentral/\
 && chown -R node:node /home/node/meshcentral

USER node
WORKDIR /home/node/meshcentral

RUN npm install meshcentral\
 && mkdir meshcentral-data meshcentral-files\
 && chown -R node:node meshcentral-data\
 && chown -R node:node meshcentral-files

ENTRYPOINT node ./node_modules/meshcentral/meshcentral.js
