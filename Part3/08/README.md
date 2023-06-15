# DevOps with Docker
## 3.8

Multi stage build for example-frontend.

```
REPOSITORY         TAG       IMAGE ID       CREATED         SIZE
example-frontend   multi     bf03bec45ad3   8 minutes ago   119MB
example-frontend   alpine    ced0903a9ace   17 hours ago    470MB
```

New multi-stage built image is ~75% smaller than the original image.

[Dockerfile-frontend](Dockerfile-frontend)

