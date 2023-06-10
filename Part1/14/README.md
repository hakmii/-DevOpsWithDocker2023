# DevOps with Docker
## 1.14

```
# Note, docker is not running locally (where browser runs), but on a different server named "docker" 

#Command to build and start containers:
#frontend
docker build . -t example-frontend -f Dockerfile-frontend
docker run -p 5000:5000 --rm -it example-frontend
#backend
docker build . -t example-backend -f Dockerfile-backend
docker run --rm -it -p 8080:8080 example-backend
```
