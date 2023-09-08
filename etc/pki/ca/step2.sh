openssl req -x509 -new -nodes -sha512 -days 3650 -subj /C=US/ST=Texas/L=Dallas/O=Lab/CN=ns1.home.lab -reqexts v3_req -extensions v3_ca -key ./ca.key -out ./ca.crt
