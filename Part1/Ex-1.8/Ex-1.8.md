### Exercise 1.8

1. Create a local file for logs
```bash
    $ touch logs.txt
```
2. Run docker with a local file bind
```bash
    $ docker run -v $(pwd)/logs.txt:/usr/app/logs.txt -it devopsdockeruh/first_volume_exercise
```
