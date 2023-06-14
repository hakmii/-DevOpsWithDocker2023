# DevOps with Docker
## 3.7

I originally used node and golang official docker base images.  

Original images:

```
REPOSITORY         TAG       IMAGE ID       CREATED          SIZE
example-frontend   latest    28bb42dbfb25   18 minutes ago   1.26GB
example-backend   latest    56cc4fd9c9ba   16 minutes ago   1.07GB
```

After changing base images:

- frontend from node:16 to node:alpine
- backend from golang:1.16 to golang:alpine

```
REPOSITORY        TAG       IMAGE ID       CREATED          SIZE
example-frontend   alpine    ced0903a9ace   About a minute ago   470MB
example-backend   alpine    e1648685a84c   49 seconds ago   496MB
```

New images based on alpine were much smaller compared to original base images.


[Dockerfile-frontend](Dockerfile-frontend)

[Dockerfile-backend](Dockerfile-backend)

