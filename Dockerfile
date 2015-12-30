FROM       michaelsauter/alpine:3.3
MAINTAINER Michael Sauter <mail@michaelsauter.net>

ARG redis_version=3.0.5-r1

RUN sudo apk-install redis=$redis_version

ADD redis /redis
RUN sudo chown -R default: /redis/data

ADD bin/start-redis /usr/local/bin/start-redis
RUN sudo chmod 0755 /usr/local/bin/start-redis

WORKDIR /redis
EXPOSE  6379
CMD     ["start-redis"]
