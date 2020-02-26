#! /bin/bash

set -x
read -p "Press enter to continue to remove the Master taint"
kubectl taint nodes --all node-role.kubernetes.io/master-
read -p "Press enter to continue to apply Flannel SDN"
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/62e44c867a2846fefb68bd5f178daf4da3095ccb/Documentation/kube-flannel.yml
read -p "Press enter to continue to create Multus Pluggin Support"
kubectl create -f multus-cni/images/multus-daemonset.yml 
read -p "Press enter to continue to show cluster nodes"
kubectl get nodes

