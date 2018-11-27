#!/usr/bin/env bash
sudo ceph auth get-key client.admin > /tmp/secret
kubectl create namespace cephfs
kubectl create secret generic ceph-secret-admin --from-file=/tmp/secret --namespace=cephfs
