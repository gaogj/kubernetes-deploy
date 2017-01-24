#etcd image
#
FROM quay.io/coreos/etcd:v3.1.0
#
ADD start.sh /home/
#
CMD sh /home/start.sh && tail -f /home/logs/etcd.log