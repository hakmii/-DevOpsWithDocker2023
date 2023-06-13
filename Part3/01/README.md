# DevOps with Docker
## 3.1

Link to repository: https://github.com/hakmii/express-app

Workflow configuration:

https://github.com/hakmii/express-app/blob/main/.github/workflows/docker-image.yml

```
root@docker02:~/3.1# docker compose logs -f
watchtower   | time="2023-06-13T17:06:10Z" level=info msg="Watchtower 1.5.3"
watchtower   | time="2023-06-13T17:06:10Z" level=info msg="Using no notifications"
watchtower   | time="2023-06-13T17:06:10Z" level=info msg="Only checking containers using enable label"
watchtower   | time="2023-06-13T17:06:10Z" level=info msg="Scheduling first run: 2023-06-13 17:07:10 +0000 UTC"
watchtower   | time="2023-06-13T17:06:10Z" level=info msg="Note that the first check will be performed in 59 seconds"
express-app  | Server running on port 8080
watchtower   | time="2023-06-13T17:07:11Z" level=info msg="Session done" Failed=0 Scanned=1 Updated=0 notify=no
watchtower   | time="2023-06-13T17:08:11Z" level=info msg="Session done" Failed=0 Scanned=1 Updated=0 notify=no
watchtower   | time="2023-06-13T17:09:11Z" level=info msg="Session done" Failed=0 Scanned=1 Updated=0 notify=no
watchtower   | time="2023-06-13T17:10:11Z" level=info msg="Session done" Failed=0 Scanned=1 Updated=0 notify=no
watchtower   | time="2023-06-13T17:13:26Z" level=info msg="Found new hakmii/express-app:latest image (64e09de2baff)"
watchtower   | time="2023-06-13T17:13:26Z" level=info msg="Stopping /express-app (72a9a8782176) with SIGTERM"
express-app exited with code 137
watchtower   | time="2023-06-13T17:13:39Z" level=info msg="Creating /express-app"
watchtower   | time="2023-06-13T17:13:42Z" level=info msg="Session done" Failed=0 Scanned=1 Updated=1 notify=no
express-app  | Server running on port 8080
```
