#!/bin/sh

apt-get update && apt-get install -y --no-install-recommends apt-transport-https

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

echo "deb http://apt.kubernetes.io/ kubernetes-xenial main"  | sudo tee -a /etc/apt/sources.list.d/kubernetes.list

apt-get update && apt-get install -y --no-install-recommends \
     kubelet \
     kubeadm \
     kubernetes-cni