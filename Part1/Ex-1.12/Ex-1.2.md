### Exercise 1.12

Modifications to original Docerfiles on Ex 1.11 and 1.12
```bash
# Directive to Frontend
ENV API_URL=http://localhost:8000

# Directive to Backend
ENV FRONT_URL=http://localhost:5000
```
Rebuilding both containers with tags frontend1.10 and backend1.11
```bash
$ docker build -t frontend1.10 .
$ docker build -t backend1.11 .
```

Running containers in two terminal windows concurrently
```bash
# Frontend
$ docker run -p 5000:5000 -it frontend1.10

# Backend
$ docker run -v $(pwd)/logs.txt:/usr/src/backend-example-docker/logs.txt -p 8000:8000 -it backend1.11
```
