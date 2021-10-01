FROM ruby:2.7

ENV RAILS_ENV=production

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app
COPY . /app

RUN bundle install --path vendor/bundle

RUN bundle exec rails assets:precompile
