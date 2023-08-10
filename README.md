```
# build
docker build . -t nginx-localhost

# run (-d --detached)
docker-compose up -d

# Run a web server to serve the current directory
docker container run  -d --rm -p 80:80 -v ${PWD}:/var/lib/nginx/html:ro nginx-localhost
```


```
# connect to container
docker exec -ti localhost sh

# check config
vi /etc/nginx/http.d/default.conf

# check if you can access synlink in continer
cd /var/lib/nginx/html
cd <symlink>

# in docker-compose.yml we must give add the mounts between host and container
# - host current working directory: ngninx root folder
# - <host symlink> : <path container> (container has access to /home/<user>)"
volumes:
    - ${PWD}:/var/lib/nginx/html:ro
    - ${PWD}/Videos:/home/rob/Videos

```

