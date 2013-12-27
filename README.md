#Docker-Nginx

Dockerfile for using nginx.
CentOS6.4

#Usage

```
git clone git@github.com:yss44/docker_nginx.git
cd docker_nginx
docker build username/nginx .
docker run -d -p 80:80 username/nginx
```

Container port is forwarded to Host's port 80.

For check nginx works.

```
curl http://localhost:80
> Hello, Nginx!
```

ok!
