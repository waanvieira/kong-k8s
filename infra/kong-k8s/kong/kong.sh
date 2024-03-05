#!/bin/bash
# Modo de rodar scripts em escala, seria a mesma coisa que digitar no terminal
#Criando o kong com o namespace kong
kubectl create ns kong
# instalando e configurando o kong via helm
# Adicionando o repositório se não da erro
helm repo add kong https://charts.konghq.com
# Atualizando o repositório
helm repo update

helm install kong kong/kong -f kong-conf.yaml --set proxy.type=NodePort,proxy.http.nodePort=30000,proxy.tls.nodePort=30003 --set ingressController.installCRDs=false --set serviceMonitor.enabled=true --set serviceMonitor.labels.release=promstack --namespace kong
# helm install kong kong/kong kong --create-namespace --repo https://charts.konghq.com ingress
