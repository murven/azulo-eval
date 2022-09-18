# Azulo Eval @danieljvx

## Development UP


### `1. Up All conntainer:`
```bash
docker-compose -f docker-compose.dev.yml --env-file ./.env.dev up
```
### `2. Migration Database with flyway:`
```bash
docker-compose run --rm ./flyway flyway -url=jdbc:mysql://localhost:3306 -schemas=azulo_airport -user=danieljvx -password=azulo migrate
```

| App | Url |
| ------ | ------ |
| airport-web | [http://localhost:3000](http://localhost:3000) |
| airport-api | [http://localhost:8000](http://localhost:8000) |
| directus | [http://localhost:8055](http://localhost:8055) |
| mysql | [mysql://localhost:3306](mysql://localhost:3306) |

### `Directus Admin User:`
```bash
Email: villanueva.danielx@gmail.com
Password 123qwe
```

## Production UP


### `1. Up All conntainer:`
```bash
docker-compose -f docker-compose.prod.yml --env-file ./.env.prod up
```

| App | Url |
| ------ | ------ |
| nginx | [http://localhost:8085](http://localhost:8085) |
| airport-web | [http://localhost:8085/web](http://localhost:8085/web) |
| airport-api | [http://localhost:8085/api](http://localhost:8085/api) |
| directus | [http://localhost:8085/directus](http://localhost::8085/directus) |
| mysql | [mysql://localhost:3306](mysql://localhost:3306) |

### `Directus Admin User:`
```bash
Email: villanueva.danielx@gmail.com
Password 123qweasd
```


## Daniel Villanueva

Email: [villanueva.danielx@gmail.com](mail://villanueva.danielx@gmail.com)

Github: [@danieljvx](https://github.com/danieljvx)
