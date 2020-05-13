# Rails learning

This project is my attempt to learn Ruby on Rails. I have mostly been following the tutorial [here](https://guides.rubyonrails.org/getting_started.html).

## Running the project locally

### 1. Run a Postgres instance

You will need a Postgres database running. A `docker-compose.yml` file is provided for this purpose. You will need [Docker](https://www.docker.com/products/docker-desktop) and [Docker Compose](https://docs.docker.com/compose/) to use this.

Start the Postgres DB docker container:
```shell
docker-compose up --detach db
```

This docker container is configured with default username/db/password `postgres` which matches the defaults in `config/database.yml`. If you want to connect to your own instance, or an instance hosted somewhere else, update the values in `config/database.yml` or export the referenced environment variables (`POSTGRES_HOST`, `POSTGRES_USER`, `POSTGRES_PASSWORD` etc).

### 2. Running the app
Once you have a DB running you can run the project with the following commands:

```shell
# Install project dependencies
bundle install;

# Start the development server
rails server;
```

If you don't have a local Ruby on Rails dev environment (`bundle`, `ruby`, `gem`, `yarn` etc.) a docker container is provided for local development also:

```shell
docker-compose up --detach --build app
```

NOTE: You only need `--build` if Gemfile or Gemfile.lock have changed.

This will build and run a container with all the tools required to run the development server and run the project. This container is configured to connect to the DB also running in the same Docker Compose stack. If you wish to connect to a different DB instance you will need to edit the environment variables in `docker-compose.yml` under the 'app' service.


## Documentation / resources
  * [Getting Started with Rails](https://guides.rubyonrails.org/getting_started.html)
  * [Getting Started on Heroku with Rails 6.x](https://devcenter.heroku.com/articles/getting-started-with-rails6)
  * [Ruby track on Exercism](https://exercism.io/tracks/ruby)
  * [Learn Ruby in Y minutes](https://learnxinyminutes.com/docs/ruby/)
  * [Rubocop Ruby style guide](https://github.com/rubocop-hq/ruby-style-guide)
  * [YARD documentation](https://rubydoc.info/gems/yard/file/docs/GettingStarted.md)

## Backlog
  * Put validation on comment posting
  * Remove stuff that isn't relevant (e.g. Mailer stuff ??)
  * Some kind of authorization
  * Edit comments
  * Add tests / make tests pass
  * Document how this all hangs together
  * What's the expected way of passing data into a partial?
  * How do forms know where to POST their data to?
  * Add JSON views
