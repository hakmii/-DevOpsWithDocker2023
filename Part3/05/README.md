# DevOps with Docker
## 3.5

Changed both dockerfiles so processes start as non root user.

[Dockerfile-frontend](Dockerfile-frontend)

[Dockerfile-backend](Dockerfile-backend)


Built both images, started containers and made sure processes started as non root user:

```
# docker container exec -it happy_edison ps waux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
webserv+       1  0.0  0.0   2388   696 pts/0    Ss+  17:50   0:00 /bin/sh -c serve -s -l 5000 build
webserv+       8  0.2  0.8 11382868 67764 pts/0  Sl+  17:50   0:02 node /usr/local/bin/serve -s -l 5000 build
webserv+      50  0.0  0.0   7640  2764 pts/1    Rs+  18:07   0:00 ps waux

# docker container exec -it elastic_engelbart ps waux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
webserv+       1  0.1  0.0   2420   580 pts/0    Ss+  18:08   0:00 /bin/sh -c ./server
webserv+       7  0.0  0.1 1087056 11804 pts/0   Sl+  18:08   0:00 ./server
webserv+      13  4.0  0.0   6700  2960 pts/1    Rs+  18:09   0:00 ps waux
```


