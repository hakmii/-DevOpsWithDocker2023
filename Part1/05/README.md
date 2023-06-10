# DevOps with Docker
## 1.5
```
# Image size comparision
$ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   2 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   2 years ago   15.7MB
# Secret message from alpine:
$ docker run -d -it --name alpineservice devopsdockeruh/simple-web-service:alpine
$ docker exec -ti alpineservice sh
/usr/src/app # tail -f text.log | grep "Secret message"
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```
