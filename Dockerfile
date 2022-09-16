from alpine

run apk update; apk add --no-cache openrc;
run mkdir -p /run/openrc/; touch /run/openrc/softlevel;

## example: start nginx service on startup
# run apk add --no-cache nginx;
# run rc-update add nginx default;

run sed -i -- 's/tty/#tty/g' /etc/inittab
volume ["/sys/fs/cgroup"]

expose 80
cmd init
