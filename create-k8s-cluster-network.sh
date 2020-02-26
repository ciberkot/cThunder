#! /bin/bash
if [ "$(id -u)" != "0" ]; then
        echo "Sorry, you are not root."
        exit 1
fi
set -x

read -p "Press enter to continue to reset k8s cluster"
kubeadm reset 
read -p "Press enter to continue to createt k8s cluster"
kubeadm init --pod-network-cidr=10.244.0.0/16
 
