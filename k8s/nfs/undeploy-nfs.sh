#!/usr/bin/env bash

kubectl delete -f nfs-busybox-rc.yaml
kubectl delete -f nfs-pvc.yaml
kubectl delete -f nfs-pv.yaml
kubectl delete -f nfs-server-service.yaml
kubectl delete -f nfs-server-rc.yaml
kubectl delete -f nfs-server-gce-pv.yaml

