# https://nodejs.org/en/docs/guides/nodejs-docker-webapp/
FROM node:boron

MAINTAINER Damian Nadales <damian.nadales@gmail.com>

RUN apt-get update && apt-get install -y \
    git 

RUN mkdir -p /usr/src/presentation
WORKDIR /usr/src/presentation
COPY package.json /usr/src/presentation/
VOLUME ["/usr/src/presentation"]

WORKDIR /tmp
RUN git clone https://github.com/hakimel/reveal.js.git
RUN mv /tmp/reveal.js /revealjs

WORKDIR /revealjs
run mkdir presentation
RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]
