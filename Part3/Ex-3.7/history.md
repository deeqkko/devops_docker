### Exercise 3.7

A simple Python Flask Hello world application.

Cloned from: https://github.com/docker-training/webapp

#### Usage
1. Clone sources from the url provided
2. Place Dockerfile.after in ./webapp -folder
3. Build: 
    docker build -t webapp:<tag> -f Dockerfile.after .
4. Run:
    docker run -it -p <hostPort>:5000 webapp:<tag>
5. "Hello world" text is found on http://localhost:<hostPort>

#### Original Dockerfile 
Dockerfile.before

IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
842333e01b5d        12 hours ago        /bin/sh -c #(nop)  CMD ["python" "app.py"]      0B                  
9ac3e4ebaf89        12 hours ago        /bin/sh -c #(nop)  EXPOSE 5000                  0B                  
d404e805a972        12 hours ago        /bin/sh -c #(nop) WORKDIR /opt/webapp           0B                  
1df82bc00bb0        12 hours ago        /bin/sh -c #(nop) ADD dir:e183b97d06a0e40afb…   703B                
3255790771c1        12 hours ago        /bin/sh -c pip install -qr /tmp/requirements…   3.87MB              
c5521ceeed7f        12 hours ago        /bin/sh -c #(nop) ADD file:70eb5feed7eb2c70a…   41B                 
69d75835e472        12 hours ago        /bin/sh -c DEBIAN_FRONTEND=noninteractive ap…   144MB               
c5e05e08f3e8        12 hours ago        /bin/sh -c apt-get update                       13.8MB              
7c94fb72f731        12 hours ago        /bin/sh -c #(nop)  MAINTAINER Docker Educati…   0B                  
6e4f1fe62ff1        6 months ago        /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B                  
<missing>           6 months ago        /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B                  
<missing>           6 months ago        /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   195kB               
<missing>           6 months ago        /bin/sh -c [ -z "$(apt-get indextargets)" ]     0B                  
<missing>           6 months ago        /bin/sh -c #(nop) ADD file:276b5d943a4d284f8…   196MB               

Image size with Ubuntu 14.04 -> ~ 358MB

#### Modifications
Dockerfile.after

* Used python:alpine baseimage
* Reduced layers
* Non-root user
* App itself is so simple that multi-stage build is not neccessary

IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
d085392b8e50        13 hours ago        /bin/sh -c #(nop)  CMD ["python" "app.py"]      0B                  
f76d39aa0458        13 hours ago        /bin/sh -c #(nop)  EXPOSE 5000                  0B                  
66469a203be4        13 hours ago        /bin/sh -c #(nop)  USER webapp                  0B                  
13f9cafbb1cc        13 hours ago        /bin/sh -c pip install -r requirements.txt      10.1MB              
913258c32d5c        13 hours ago        /bin/sh -c #(nop) WORKDIR /webapp               0B                  
427d0404a7ae        13 hours ago        /bin/sh -c #(nop) COPY dir:e183b97d06a0e40af…   703B                
de01231c9bb4        13 hours ago        /bin/sh -c addgroup -S webapp &&     adduser…   4.95kB              
906d14f03ac2        4 years ago         /bin/sh -c #(nop) CMD ["python2"]               0B                  
<missing>           4 years ago         /bin/sh -c set -ex  && apk add --no-cache --…   51.4MB              
<missing>           4 years ago         /bin/sh -c #(nop) ENV PYTHON_PIP_VERSION=8.1…   0B                  
<missing>           4 years ago         /bin/sh -c #(nop) ENV PYTHON_VERSION=2.7.11     0B                  
<missing>           4 years ago         /bin/sh -c #(nop) ENV GPG_KEY=C01E1CAD5EA2C4…   0B                  
<missing>           4 years ago         /bin/sh -c #(nop) ENV LANG=C.UTF-8              0B                  
<missing>           4 years ago         /bin/sh -c #(nop) ADD file:852e9d0cb9d906535…   4.8MB               

Image size with python:2.7.11-alpine -> ~ 67MB
