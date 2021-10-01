FROM ruby:2.7.3

ENV RAILS_ENV=production
ENV NODE_ENV=production
ENV SECRET_KEY_BASE=$SECRET_KEY_BASE

RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client

WORKDIR /app
COPY . /app

RUN bundle install --path vendor/bundle
RUN bundle exec rails assets:precompile
