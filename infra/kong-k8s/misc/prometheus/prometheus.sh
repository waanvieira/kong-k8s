#!/bin/bash
kubectl create ns monitoring

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo add stable https://kubernetes-charts.storage.googleapis.com/

helm repo update

helm install prometheus-stack prometheus-community/kube-prometheus-stack -f prometheus.yaml --namespace monitoring
