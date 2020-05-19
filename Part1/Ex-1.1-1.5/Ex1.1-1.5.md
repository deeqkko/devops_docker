# DevOps with Docker 2020 mooc.fi online course
# Part 1 Excercises 1.1 thru 1.5

## 1.1 Getting started

Output of docker ps -a

```
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS               NAMES
b845525061c8        nginx               "nginx -g 'daemon of…"   43 seconds ago      Exited (0) 15 seconds ago                       sweet_gagarin
bad6e0c93150        nginx               "nginx -g 'daemon of…"   44 seconds ago      Up 43 seconds               80/tcp              stupefied_wu
b990c627146e        nginx               "nginx -g 'daemon of…"   45 seconds ago      Exited (0) 15 seconds ago                       elated_keldysh
```
## 1.2 Cleanup

Output of docker ps -a
```
$ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
```
Output of docker images
```
$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
```
## 1.3 Hello Docker hub

Cmds used:
```
docker run -it devopsdockeruh/pull_exercise
basics
```
Deh oh so secret message
"This is the secret message"
```
$ docker run -it devopsdockeruh/pull_exercise
Unable to find image 'devopsdockeruh/pull_exercise:latest' locally
latest: Pulling from devopsdockeruh/pull_exercise
8e402f1a9c57: Pull complete
5e2195587d10: Pull complete
6f595b2fc66d: Pull complete
165f32bf4e94: Pull complete
67c4f504c224: Pull complete
Digest: sha256:7c0635934049afb9ca0481fb6a58b16100f990a0d62c8665b9cfb5c9ada8a99f
Status: Downloaded newer image for devopsdockeruh/pull_exercise:latest
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```
## 1.4

Cmds
```
$ docker run -d --rm -it --name bashex devopsdockeruh/exec_bash_exercise
$ docker exec -it bashex bash
$ tail -f /usr/app/logs.txt
```
Very secret message

"Docker is easy"

## 1.5

1st run
```
$ docker run -it --name web ubuntu:latest sh -c 'echo "Input website: "; read website; echo "Searching.."; sleep 1; curl http://$website;'
```
Output from web
```
Input website:
helsinki.fi
Searching..
sh: 1: curl: not found
```
Installing curl
```
$ docker exec -it web sh -c 'apt update; apt install -y curl'
```
2nd run
```
docker exec -it web sh -c 'echo "Input website: "; read website; echo "Searching.."; sleep 1; curl http://$website;'
```
Output from web
```
Input website:
helsinki.fi
Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
</body></html>
```
