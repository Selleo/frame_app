# FrameApp

Use template app from this repository to quickly bootstrap new Ruby on Rails applications which leverage Active Admin for rapidly prototyping or building backoffice applications.

Ensure you rename all instances of `FrameApp`, `frame-app`, `Frame App` and `frame_app` to the name of your choice

## Setting up application locally

- Ensure you have docker installed
- Ensure you are using the correct ruby version (look into `.ruby-version` for reference)

- Then, in project directory
    - `docker-compose up` - runs PostgreSQL and Redis
    - `cp config/database.yml.example config/database.yml` - instantiates local database configuration
    - `cp .env.example .env` - instantiates local ENV variables
    - `bundle install` - installs all necessary gems (libraries)
    - `rails db:create db:schema:load` - creates DB and loads the most recent DB structure
    - `rails db:seed` - to seed database with initial data
    - `yarn install` - install YARN packages
    - `rails s` - runs application server

## Scope of this application

- Uses Postgres instead of SQLite as DB
- Docker compose spawns Postgres and Redis instances
- Active Admin is installed without `/admin` namespace
- Active Admin is configured with devise based authentication (using `User` model)
- Active Admin is setup with ActiveMaterial theme and ActiveAdmin addons
- RSpec is installed with following addons
    - https://github.com/thoughtbot/factory_bot
    - https://github.com/simplecov-ruby/simplecov
    - https://github.com/ljkbennett/stub_env
    - https://github.com/bblimke/webmock
- Rubocop is installed and pre-configured
- Both RSpec and Rubocop are added to Github Actions CI Pipeline
- Sidekiq and Sidekiq CRON are installed
- Following gems are pre-installed / configured (to streamline development)
    - https://github.com/bkeepers/dotenv
    - https://github.com/Selleo/pattern
    - https://github.com/drapergem/draper
    - https://github.com/stevo/pubsub_on_rails
