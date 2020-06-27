#Dockerfile Exercise 1.12 Backend
FROM ubuntu:16.04

EXPOSE 8000

RUN mkdir /usr/src/backend-example-docker && \
    apt-get update && apt-get install -y curl apt-utils && \
    curl -L https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install -y nodejs && \
    apt-get purge -y --auto-remove curl apt-utils && \
    rm -rf /var/lib/apt/lists/*
COPY /backend-example-docker /usr/src/backend-example-docker
WORKDIR /usr/src/backend-example-docker
RUN npm install

# Exercise 1.12 frontend url
ENV FRONT_URL=http://localhost:5000

ENTRYPOINT ["/usr/bin/npm"]
CMD ["start"]
