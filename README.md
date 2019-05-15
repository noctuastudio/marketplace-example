# README

### Requirements

![Docker >= 17.04 ](https://badgen.net/badge/Docker/>=17.04/409be6?icon=docker)

![docker-compose >=1.8.0 ](https://badgen.net/badge/docker-compose/>=1.8/409be6?icon=docker)


The project start-up doesn't create a DB. For tmp I lunch follow command:

```bash
docker-compose run web rake db:create
docker-compose run web rake db:migrate
```

### Start server

We need to start the server with the following command

```bash
docker-compose up --build -d
```

Applications including the solidus_sample gem are provided a rake task to load the sample data:

```bash
docker-compose run web bundle exec rake spree_sample:load
```