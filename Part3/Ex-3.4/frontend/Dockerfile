#Dockerfile Exercise 1.12 Frontend
FROM ubuntu:16.04

EXPOSE 5000

RUN mkdir /usr/src/frontend-example-docker && \
    apt-get update && apt-get install -y curl apt-utils && \
    curl -L https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install -y nodejs && \
    apt-get purge -y --auto-remove curl apt-utils && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m frontend
COPY ./frontend-example-docker /usr/src/frontend-example-docker
WORKDIR /usr/src/frontend-example-docker
RUN npm install && \
    chown -R frontend:frontend /usr/src/frontend-example-docker

USER frontend

# Exercise 1.12 backend url
ENV API_URL=http://localhost:8000

ENTRYPOINT ["/usr/bin/npm"]
CMD ["start"]
