#!/usr/bin/env bash

# use the NFS server IP to update nfs-pv.yaml and execute the following
kubectl create -f nfs-pv.yaml
kubectl create -f nfs-pvc.yaml
# run a fake backend
kubectl create -f nfs-busybox-rc.yaml
# get pod name from this command
kubectl get pod -l name=nfs-busybox
# use the pod name to check the test file
# kubectl exec nfs-busybox-* -- cat /mnt/index.html