#!/usr/bin/env sh
############################################################

kubectl create secret docker-registry harbor-credentials \
  --docker-server=harbor.127.0.0.1.traefik.me \
  --docker-username=admin \
  --docker-password=Harbor12345 \
  --docker-email=drgbennett+dev@gmail.com \
  --namespace=default
