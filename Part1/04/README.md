# DevOps with Docker
## 1.4
```
#Start container to background:
docker run -d -it --name website ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'

#Enter container (start bash) and install curl
docker exec -it website bash
apt-get update && apt-get -y install curl
exit

#Attach to container, input website and get response
docker attach website

```
