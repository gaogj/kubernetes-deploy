#etcd image
#
FROM quay.io/coreos/etcd:v3.1.0
#
ADD start.sh /home/
RUN chmod 755 /home/start.sh
#
CMD /home/start.sh && tail -f /home/logs/etcd.log