# README

## Setting up application locally

- Ensure you have docker installed
- Ensure you are using the correct ruby version (look into `.ruby-version` for reference) 

In project directory

- `docker-compose up` - runs PostgreSQL and Redis
- `cp config/database.yml.example config/database.yml` - instantiates local database configuration
- `bundle install` - installs all necessary gems (libraries)
- `rails db:create db:schema:load` - creates DB and loads the most recent DB structure
- `rails db:seed` - to seed database with initial data (admin account basically)
- `yarn install` - install YARN packages
- `rails s` - runs application server
