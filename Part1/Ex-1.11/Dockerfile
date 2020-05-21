#Dockerfile Exercise 1.11
FROM ubuntu:16.04

EXPOSE 8000

RUN apt-get update && apt-get install -y curl apt-utils
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN mkdir /usr/src/backend-example-docker
COPY /backend-example-docker /usr/src/backend-example-docker
WORKDIR /usr/src/backend-example-docker
RUN npm install
ENTRYPOINT ["/usr/bin/npm"]
CMD ["start"]
