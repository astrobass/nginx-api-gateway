Starting a nginx api gateway
===

Run from Dockerhub (assumes Mongo container is running and container is on local network)
```
docker pull astrobass/nginx-api-gateway

docker run --name api-gateway -p 80:80 -d astrobass/nginx-api-gateway
```

Run Watchtower to automatically pull latest Docker image from Dockerhub when it changes
```
docker pull centurylink/watchtower

docker run -d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock centurylink/watchtower --cleanup
```

Other options
---

Start api container manually
```
docker build -t api-gateway .

docker run --name api-gateway -p 80:80 -d api-gateway
```
