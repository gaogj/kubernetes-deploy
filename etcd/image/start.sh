#!/usr/bin/env bash
#
CLUSTER_NAME=$CLUSTER_NAME
CLUSTER_STATE=$CLUSTER_STATE
#
NAME_1=node-0
NAME_2=node-1
NAME_3=node-2
HOST_1=$HOST_1
HOST_2=$HOST_2
HOST_3=$HOST_3
THIS_NAME=$THIS_NAME
THIS_IP=$THIS_IP
#
CLUSTER=${NAME_1}=http://${HOST_1}:2380,${NAME_2}=http://${HOST_2}:2380,${NAME_3}=http://${HOST_3}:2380
#
mkdir -p /home/data && mkdir -p /home/logs
#
nohup /usr/local/bin/etcd \
    --data-dir=/home/data --name ${THIS_NAME} \
    --initial-advertise-peer-urls http://${THIS_IP}:2380 --listen-peer-urls http://${THIS_IP}:2380 \
    --advertise-client-urls http://${THIS_IP}:2379 --listen-client-urls http://${THIS_IP}:2379 \
    --initial-cluster ${CLUSTER} \
    --initial-cluster-state ${CLUSTER_STATE} --initial-cluster-token ${CLUSTER_NAME} >> /home/logs/etcd.log &