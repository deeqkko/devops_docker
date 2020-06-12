## Exercise 2.10

#### Files
* Dockerfile_back
* Dockerfile_front
* nginx.conf
* docker-compose.yml

#### Description

This was a bit tricky for someone not familliar with web development with node and no experience of reverse proxy setups. With Ex 2.9 setup the 2.8-button worked as expected however the other buttons made requests to localhost port 8000.

In order to proxy these requests to right destination without breaking the setup inside docker lan, the nginx container was set to listen to port 8000 and to proxy all requests to localhost:8000/ to backend container.

This setup posed a problem since cors policy denied requests with origin header "localhost:5000" originating from localhost. Nginx was set swap the Access-Control-Allow-Origin header to latter.

As before a logs.txt must be created in order to make the backend container to work.
