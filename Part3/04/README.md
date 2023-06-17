# DevOps with Docker
## 3.4

Final version of script and Dockerfile.

How to run:

docker run -e DOCKER_USER=username -e DOCKER_PWD=password -v /var/run/docker.sock:/var/run/docker.sock imagebuilder githubrepouser/reponame dockerhub/reponame

[Dockerfile](Dockerfile)

[builder.sh](builder.sh)
