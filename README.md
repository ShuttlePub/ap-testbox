## Requirement
- [Docker](https://www.docker.com/)
- [Misskey (master)](https://github.com/misskey-dev/misskey)

### How to Run
1. Create directories.
    - `mkdir -p /certs/nginx`
    - `mkdir -p /certs/root`
2. Run `./gencert.sh`
3. Clone Misskey
    - `git clone -b master https://github.com/misskey-dev/misskey.git`
4. Setup container
    - `docker compose build`
    - `docker compose run --rm misskey pnpm run init`
5. Start container
    - `docker compose up -d`
6. Access to `https://misskey.local:4430` in your browser.
