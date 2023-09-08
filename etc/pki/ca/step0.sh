#!/usr/bin/env sh

############################################################

# Generate private key (no passphrase)
openssl genpkey -algorithm RSA -out ca.key

# Generate certificate signing request (CSR)
openssl req -new -key ca.key -out ca.csr

# Self-sign the CSR to create a self-signed certificate
# openssl x509 -req -days 365 -in ca.csr -signkey ca.key -out ca.crt
openssl req -x509 -new -nodes -sha512 -days 3650 -subj /C=US/ST=Texas/L=AustinO=Lab/CN=ns1.home.lab -reqexts v3_req -extensions v3_ca -key ./ca.key -out ./ca.crt
