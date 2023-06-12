# DevOps with Docker
## 2.9

Did the following changes to make all work:

Removed ENV REQUEST_ORIGIN=http://dockerhost from example-backend, it is not needed any more since traffic goes through reverse proxy

Changed Dockerfile-frontend so backend traffic goes through proxy:

ENV "REACT_APP_BACKEND_URL" from "http://dockerhost:8000" to "http://dockerhost/api"

[docker-compose.yml](docker-compose.yml)
[Dockerfile-frontend](Dockerfile-frontend)
[Dockerfile-backend](Dockerfile-backend)

I'm using dockerhost instead of localhost, since my docker run on a remote machine.
