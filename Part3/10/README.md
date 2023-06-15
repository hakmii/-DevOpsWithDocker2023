# DevOps with Docker
## 3.10

Did some optimizations for Part1 curler program.

```
# diff Dockerfile Dockerfile.optimized
1,2c1,3
< FROM ubuntu:20.04
< RUN apt update && apt install curl -y
---
> FROM alpine
> RUN apk add --no-cache --upgrade curl bash && \
>     adduser -D userapp
4a6
> USER userapp
```

Image sizes:

```
REPOSITORY   TAG         IMAGE ID       CREATED          SIZE
curler       optimized   35303fde19ee   15 minutes ago   13.5MB
curler       latest      98521d5efc04   28 minutes ago   132MB
```

[Dockerfile](Dockerfile)

[Dockerfile.optimized](Dockerfile.optimized)


