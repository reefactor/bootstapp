## Bootstapp

Generic template for distributed app with blackjack, frontend js served by nginx, python backend, postgresql storage and redis event bus.

```
git clone
cd bootstrapp
docker compose build
docker compose up
```


Update dependency tree [reqirements.txt](components/backend/reqirements.txt.app) from [components/backend/reqirements.txt.app](reqirements.txt.app)
```
make init
make pip-compile
```

See services declared in [docker-compose.yml](docker-compose.yml)

