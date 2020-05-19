#### Exercise 1.6 used commands

```bash
# Pulled container from source
$ docker pull devopsdockeruh/overwrite_cmd_exercise
```

Run container without creating Dockerfile
```bash
$ docker run -it devopsdockeruh/overwrite_cmd_excercise
```
Output of container help message
```
-h,             --help                  to show this message
-a [age],       --adult [age]           to check if you're older than 18
-c [time],      --clock [time]          to start a clock
-t [size],      --triangle [size]       to draw a triangle, takes second argument as the size
```

Checked more information from Docker processes
```bash
$ docker ps -a

CONTAINER ID        IMAGE                                   COMMAND               CREATED             STATUS                     PORTS               NAMES
41f0bf8ec5d1        devopsdockeruh/overwrite_cmd_exercise   "/usr/app/start.sh"   4 minutes ago       Exited (0) 4 minutes ago                       musing_davinci
```
Since default CMD is "/usr/app/start.sh" clock must start with that command and flag c. Testing with running a container with "-c"
```bash
docker run -it devopsdockeruh/overwrite_cmd_excercise -c
```
Clock is ticking

Created a Dockerfile (same folder)

Built the container with a tag docker-clock and ran
```bash
# Build
$ docker build -t docker-clock .

# Run
$ docker run docker-Clock
```
Clock is ticking...
