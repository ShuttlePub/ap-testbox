#!/usr/bin/env bash

cp /root/.local/share/mkcert/rootCA.pem /certs/root/
mkcert -cert-file /certs/nginx/misskey.crt -key-file /certs/nginx/misskey.key misskey.localhost
mkcert -cert-file /certs/nginx/shuttlepub.crt -key-file /certs/nginx/shuttlepub.key shuttlepub.localhost
