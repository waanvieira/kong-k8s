#!/bin/bash
kubectl exec -it testcurl -- sh

# Aqui estamos usando o modo grantupe password
curl --location --request POST 'http://keycloak.iam/realms/bets/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=kong' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'username=admin' \
--data-urlencode 'password=admin' \
--data-urlencode 'client_secret=GHvGsIM35kMDPnkN71O4EqzUGq0MvOEA' \
--data-urlencode 'scope=openid'
