##### CephFS Volume Provisioner Deploy
```
sudo ceph auth get-key client.admin > /tmp/secret
kubectl create namespace cephfs
kubectl create secret generic ceph-secret-admin --from-file=/tmp/secret --namespace=cephfs
kubectl apply -f deploy/rbac.yaml
kubectl apply -f deploy/deployment.yaml
```

##### Create StorageClass
```
kubectl apply -f deploy/storageclass.yaml
```

##### Test
```
kubectl apply -f pvc.yaml
kubectl apply -f test.yaml
```

##### Reference
[https://github.com/kubernetes-incubator/external-storage/tree/master/ceph/cephfs](https://github.com/kubernetes-incubator/external-storage/tree/master/ceph/cephfs)
