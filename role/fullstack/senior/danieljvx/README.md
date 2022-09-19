# Azulo Eval @danieljvx

# Env Development


### `1. Up All conntainer:`
```bash
docker-compose -f docker-compose.dev.yml --env-file ./.env.dev up --build
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
### `airport-api:`
| Resource | Type | Path | Body |
| ------ | ------ | ------ | ------ |
| Documentation Api | GET | [http://localhost:8000/doc](http://localhost:8000/doc) | null |
| List Airports | GET | [http://localhost:8000/v1/airport?page=1&perPage=2&search=Internacional](http://localhost:8000/v1/airport?page=1&perPage=2&search=Internacional) | null |
| Change Operator | PUT | [http://localhost:8000/v1/airport/operator/:id](http://localhost:8000/v1/airport/operator/:id) | { operatorId: number } |
| Change Priority Order | PUT | [http://localhost:8000/v1/airport/priority-order/:id](http://localhost:8000/v1/airport/priority-order/:id) | { priorityOrder: number } |



# Env Production


### `1. Up All conntainer:`
```bash
docker-compose -f docker-compose.prod.yml --env-file ./.env.prod up --build
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
### `airport-api:`
| Resource | Type | Path | Body |
| ------ | ------ | ------ | ------ |
| Documentation Api | GET | [http://localhost:8085/api/doc](http://localhost:8085/api/doc) | null |
| List Airports | GET | [http://localhost:8085/api/v1/airport?page=1&perPage=2&search=Internacional](http://localhost:8085/api/v1/airport?page=1&perPage=2&search=Internacional) | null |
| Change Operator | PUT | [http://localhost:8085/api/v1/airport/operator/:id](http://localhost:8085/api/v1/airport/operator/:id) | { operatorId: number } |
| Change Priority Order | PUT | [http://localhost:8085/api/v1/airport/priority-order/:id](http://localhost:8085/api/v1/airport/priority-order/:id) | { priorityOrder: number } |


## Daniel Villanueva

Email: [villanueva.danielx@gmail.com](mail://villanueva.danielx@gmail.com)

Github: [@danieljvx](https://github.com/danieljvx)
