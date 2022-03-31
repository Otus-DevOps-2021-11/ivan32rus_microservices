#!/bin/sh
sudo hostnamectl set-hostname k8s-master1.local
apt-get update
sudo apt-get install docker docker.io
sudo systemctl enable docker
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
sudo apt install kubeadm=1.14.9-00 kubelet=1.14.9-00 kubectl=1.14.9-00
sudo swapoff -a

sudo kubeadm init --pod-network-cidr=10.244.0.0/16
kubectl apply -f https://github.com/coreos/flannel/blob/master/Documentation/kube-flannel.yml?raw=true

