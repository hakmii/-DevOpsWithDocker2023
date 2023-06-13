FROM docker
RUN apk update && apk add git bash
WORKDIR /script
COPY . .
ENTRYPOINT ["/bin/bash", "/script/builder.sh"]
