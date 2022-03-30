FROM node:alpine

# ensure latest npm
RUN npm install -g npm@latest

RUN mkdir -p /var/lib/wvr

ADD . /var/lib/wvr

# install
RUN cd /var/lib/wvr && \
#    npm update && \
    export NODE_OPTIONS=--openssl-legacy-provider && \
    npm i

EXPOSE 3000

WORKDIR /var/lib/wvr

CMD ["npm","start"]
