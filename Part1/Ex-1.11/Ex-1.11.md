### Exercise 1.11

1. Creating logs.txt on local machine
2. Building Dockerfile
```bash
$ docker build -t backend1.11 .
```
3. Running container with a bind file ./logs.txt:/usr/src/backend-example-docker/logs.txt and with listen port 8000
```bash
$ docker run -v $(pwd)/logs.txt:/usr/src/backend-example-docker/logs.txt -p 8000:8000 -it backend1.11
```
