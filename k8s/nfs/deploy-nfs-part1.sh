#!/usr/bin/env bash

kubectl create -f nfs-server-gce-pv.yaml
kubectl create -f nfs-server-rc.yaml
kubectl create -f nfs-server-service.yaml
# get the cluster IP of the server using the following command
kubectl describe services nfs-server