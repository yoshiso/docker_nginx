# Memcached
#
# VERSION       42

# use the ubuntu base image provided by dotCloud
FROM centos

MAINTAINER yoshiso

RUN yum -y update

# make sure the package repository is up to date
ADD nginx.repo /etc/yum.repos.d/nginx.repo
RUN chmod 0644 /etc/yum.repos.d/nginx.repo

# install memcached
RUN yum install -y nginx

ADD nginx.conf /etc/nginx/nginx.conf
Add default.conf /etc/nginx/conf.d/default.conf

# Nginx public directory

ADD src /var/www

# expose memcached port
EXPOSE 80

CMD ["service","nginx","start"]

