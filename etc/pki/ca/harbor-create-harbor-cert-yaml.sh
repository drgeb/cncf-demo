#!/usr/bin/env sh

############################################################

cat <<EOF > harbor-cert.yaml
apiVersion: cert-manager.io/v1
kind: Certificate
metadata:
  name: harbor-home-lab
  namespace: harbor
spec:
  secretName: harbor-secret
  renewBefore: 360h
  subject:
    organizations:
    - homelab
  commonName: harbor.home.lab
  isCA: false
  privateKey:
    algorithm: RSA
    encoding: PKCS1
    size: 2048
    rotationPolicy: Always
  usages:
    - server auth
    - client auth
  dnsNames:
  - harbor.home.lab
  uris:
  - spiffe://cluster.local/ns/harbor/sa/harbor
  ipAddresses:
  - 10.0.0.40
  issuerRef:
    name: ca-issuer
    kind: ClusterIssuer
    group: cert-manager.io
EOF
