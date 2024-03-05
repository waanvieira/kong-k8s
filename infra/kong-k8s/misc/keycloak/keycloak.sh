#!/bin/bash
kubectl create ns iam
# A senha está exposta apenas para ambiente de Dev, nunca utilizar isso em produção
helm install keycloak bitnami/keycloak --set auth.adminUser=keycloak,auth.adminPassword=keycloak --namespace iam
