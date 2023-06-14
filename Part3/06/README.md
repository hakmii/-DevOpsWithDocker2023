# DevOps with Docker
## 3.6

I used node and golang docker base images originally, they are huge, and combining RUN statements did not do much (if nothing at all). 


[Dockerfile-frontend](Dockerfile-frontend)

[Dockerfile-backend](Dockerfile-backend)

Original images:

```
docker image history example-frontend | grep RUN
<missing>      56 minutes ago   RUN /bin/sh -c chown webservice . # buildkit    0B        buildkit.dockerfile.v0
<missing>      56 minutes ago   RUN /bin/sh -c adduser webservice # buildkit    334kB     buildkit.dockerfile.v0
<missing>      56 minutes ago   RUN /bin/sh -c npm install -g serve # buildk…   6.38MB    buildkit.dockerfile.v0
<missing>      56 minutes ago   RUN /bin/sh -c npm run build # buildkit         8.68MB    buildkit.dockerfile.v0
<missing>      57 minutes ago   RUN /bin/sh -c npm install # buildkit           336MB     buildkit.dockerfile.v0

docker image history example-backend | grep RUN
<missing>      53 minutes ago   RUN /bin/sh -c useradd -m webservice # build…   332kB     buildkit.dockerfile.v0
<missing>      53 minutes ago   RUN /bin/sh -c go test ./... . # buildkit       238kB     buildkit.dockerfile.v0
<missing>      53 minutes ago   RUN /bin/sh -c go build # buildkit              146MB     buildkit.dockerfile.v0


REPOSITORY         TAG       IMAGE ID       CREATED          SIZE
example-frontend   latest    28bb42dbfb25   18 minutes ago   1.26GB
example-backend   latest    56cc4fd9c9ba   16 minutes ago   1.07GB
```

After combining RUN statements, we see that theres hardly any change, since base image is so huge.
Did not try to trim base image, better change it to something smaller.

```
docker image history example-frontend | grep RUN
<missing>      35 minutes ago      RUN /bin/sh -c npm install &&     npm run bu…   352MB     buildkit.dockerfile.v0

docker image history example-backend | grep RUN
<missing>      33 minutes ago   RUN /bin/sh -c go build &&     go test ./...…   146MB     buildkit.dockerfile.v0

REPOSITORY         TAG       IMAGE ID       CREATED          SIZE
example-frontend   latest    28bb42dbfb25   36 minutes ago   1.26GB
example-backend   latest    56cc4fd9c9ba   35 minutes ago   1.07GB
```
