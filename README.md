## Requirement
- [mkcert](https://github.com/FiloSottile/mkcert)
- [Misskey (master)](https://github.com/misskey-dev/misskey)

### How to Run
1. Create directories.
    - `mkdir /cert`
    - `mkdir /cert/nginx`
    - `mkdir /cert/root`
2. Run `mkcert -install`
3. Copy `rootCA.pem` to `/cert/root`
    - The location of `rootCA.pem` can be seen with `mkcert -CAROOT`.
4. Run `mkcert -cert-file certs/nginx/misskey.crt -key-file certs/nginx/misskey.key misskey.localhost`
5. Clone Misskey
    - `git clone -b master https://github.com/misskey-dev/misskey.git`
6. Setup container
    - `docker compose build`
    - `docker compose run --rm misskey pnpm run init`
7. Start container
    - `docker compose up -d`