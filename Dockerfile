FROM       michaelsauter/alpine:3.2
MAINTAINER Michael Sauter <mail@michaelsauter.net>

RUN sudo apk-install redis=3.0.2-r0

ADD redis /redis
RUN sudo chown -R default: /redis/data

ADD bin/start-redis /usr/local/bin/start-redis
RUN sudo chmod 0755 /usr/local/bin/start-redis

WORKDIR /redis
EXPOSE  6379
CMD     ["start-redis"]
