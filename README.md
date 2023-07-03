# SANDBOX

Programing practice mono-repo with different projects and thechologies pre-set up ready to go for testing ideas or practicing new concepts.

All of these application have been setup with some basic posts and comments domain logic.

- Standard Rails 7 application / [rails-sandbox](https://github.com/fede-moya/sandbox/tree/master/rails-sandbox)
- Rails 7 API only application / [rails-api-sandbox](https://github.com/fede-moya/sandbox/tree/master/rails-api-sandbox)
- Rails GraphQL API / [rails-graphql-sandbox](https://github.com/fede-moya/sandbox/tree/master/rails-graphql-sandbox)
- React
- Standard Rails without hotwire
  .ruby-version
- rails-hotwire
  .ruby-version
- Rails --api
  .ruby-version
- rails-graphql-api
  .ruby-version
- redis (some basic ruby script for interacting with redis directly, demonstrating the different types of data structures it supports)
- sql (sql script for creating a database with some dummy data, with also a script for deleting data)

using nvm for managing node versions

Most of the third party software needed like postgres or redis is provided through docker containers, with the help of docker-compose.

# Ruby
using rvm for managing ruby versions

```
brew install rvm
```
e.g;
```
rvm list
   ruby-2.6.1 [ x86_64 ]
   ruby-2.7.5 [ x86_64 ]
   ruby-2.7.6 [ x86_64 ]
=* ruby-3.0.0 [ x86_64 ]
   ruby-3.1.0 [ x86_64 ]

# => - current
# =* - current && default
#  * - default
```

## Postgresql

There is a `postgresql` service defined at [docker-compose.yml](https://github.com/fede-moya/sandbox/blob/master/docker-compose.yml) published on 5432 so you can communicate with it through `localhost:5432`.

*To start a postgres server run:*

```sh
make postgres.up
```

*To access a psql prompt run:*

```sh
make postgres.psql
```
*To reset all postgres data run:&

```sh
make postgres.reset
```

## Redis

There is a `redis` service defined at [docker-compose.yml](https://github.com/fede-moya/sandbox/blob/master/docker-compose.yml) published on 6379 so you can communicate with it through `localhost:6379`.

*To start a redis server run:*

```sh
make redis.up
```

*To access a redis repl run:*

```sh
make redis.cli
```
*To reset all redis data run:*

```sh
make redis.reset
```

# Rakefile for dumping the db and redis and also to feed them with somen dummy data
