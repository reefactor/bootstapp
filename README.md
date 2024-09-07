## Bootstapp

Generic template for dockerized distributed app with blackjack, frontend js served by nginx, python backend, postgresql storage and redis event bus.

Requirements: docker, docker compose, python3, 10 minutes of time

Run test
```
git clone git@github.com:reefactor/bootstapp.git
cd bootstrapp
make init
make test
```

Start server
```
git clone git@github.com:reefactor/bootstapp.git
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

