#!/usr/bin/env bash
#
version=v3.1.0
path=$(cd "$(dirname "$0")" &&  pwd)
cd $path
#
docker build --rm=true --no-cache=true -t docker.weibangong.me/etcd-cluster:v3.1.0 .
#docker push docker.weibangong.me/etcd-cluster:v3.1.0
