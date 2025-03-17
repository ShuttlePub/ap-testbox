#!/usr/bin/env bash

cp /root/.local/share/mkcert/rootCA.pem /certs/root/
mkcert -cert-file /certs/nginx/misskey.crt -key-file /certs/nginx/misskey.key misskey.localhost
