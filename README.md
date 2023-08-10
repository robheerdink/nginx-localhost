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

# in docker-compose.yml we must give mount the content in the contaner
# so e.g current directory to defualt ngninx root
# but but also the mount the symlinks
volumes:
    - ${PWD}:/var/lib/nginx/html:ro
    - ${PWD}/Videos:/home/rob/Videos

```

