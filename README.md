## Requirement
- [Docker](https://www.docker.com/)
- [Misskey (master)](https://github.com/misskey-dev/misskey)

### How to Run
1. Run `./gencert.sh`
2. Clone Misskey
    - `git clone -b master https://github.com/misskey-dev/misskey.git`
3. Setup container
    - `docker compose build`
    - `docker compose run --rm misskey pnpm run init`
4. Start container
    - `docker compose up -d`
5. Access to `https://misskey.local:4430` in your browser.
