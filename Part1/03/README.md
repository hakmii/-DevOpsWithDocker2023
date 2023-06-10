# DevOps with Docker
## 1.3
```
docker container run -d -it --name secrets devopsdockeruh/simple-web-service:ubuntu
docker exec -it secrets bash
tail -f ./text.log

Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```
