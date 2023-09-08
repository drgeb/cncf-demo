#!/usr/bin/env sh

############################################################
HOSTNAME=harbor.127.0.0.1.traefik.me
SECRET_NAME=harbor-certificate
INGRESS_NAMESPACE=ingress-nginx
CERT_FILE=tls.crt
CERT_KEY=tls.key
CERTIFICATE_NAME=harbor-ca-cert

# Download the certificate
openssl s_client -showcerts -connect ${HOSTNAME}:443 </dev/null 2>/dev/null | openssl x509 -outform PEM > ${CERT_FILE}

# Download the private key (if available)
# openssl s_client -connect ${HOSTNAME}:443 -servername ${HOSTNAME} </dev/null 2>/dev/null | openssl rsa -outform PEM > ${CERT_KEY}

# kubectl create secret tls ${SECRET_NAME} --cert=${CERT_FILE} --key ${CERT_KEY} -n ${INGRESS_NAMESPACE}

# GENERIC CASE
kubectl create secret generic ${CERTIFICATE_NAME} --from-file=ca.crt=${CERT_FILE} -n ${INGRESS_NAMESPACE}
