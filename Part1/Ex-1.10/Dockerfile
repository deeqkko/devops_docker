#Dockerfile Exercise 1.10
FROM ubuntu:16.04

EXPOSE 5000

RUN apt-get update && apt-get install -y curl apt-utils
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN mkdir /usr/src/frontend-example-docker
COPY /frontend-example-docker /usr/src/frontend-example-docker
WORKDIR /usr/src/frontend-example-docker
RUN npm install && npm run build

# Exercise 1.12 backend url
ENV API_URL=http://localhost:8000

#ENTRYPOINT ["/usr/bin/npm"]
#CMD ["start"]
CMD ["bash"]