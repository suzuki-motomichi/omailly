FROM ruby:2.7.3

ENV NODE_ENV=production
ENV RAILS_ENV=production
ENV RAILS_MASTER_KEY=$RAILS_MASTER_KEY
ENV SECRET_KEY_BASE=$SECRET_KEY_BASE

RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client

# mecab
RUN apt-get install -y mecab libmecab-dev mecab-ipadic-utf8 sudo

# neologd
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
RUN cd mecab-ipadic-neologd
RUN ./bin/install-mecab-ipadic-neologd -n -y
RUN echo `mecab-config --dicdir`"/mecab-ipadic-neologd"

WORKDIR /app

# copy
RUN mkdir dic
RUN cp -rp `mecab-config --dicdir`"/mecab-ipadic-neologd" dic/
COPY . /app

RUN bundle install --path vendor/bundle

# RUN bundle exec rails assets:precompile
