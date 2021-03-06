FROM ruby:2.7.3

ARG NODE_ENV
ARG RAILS_ENV
ARG RAILS_MASTER_KEY
ARG SECRET_KEY_BASE

RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client

# mecab
RUN apt-get install -y mecab libmecab-dev mecab-ipadic-utf8 sudo

# neologd
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git && \
cd mecab-ipadic-neologd && \
./bin/install-mecab-ipadic-neologd -n -y && \
echo `mecab-config --dicdir`"/mecab-ipadic-neologd"

WORKDIR /app

# copy
RUN mkdir dic
RUN cp -rp `mecab-config --dicdir`"/mecab-ipadic-neologd" dic/
COPY . /app

RUN bundle install --path vendor/bundle

RUN bundle exec rails assets:precompile
