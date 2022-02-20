FROM ruby:2.7

# 本番環境用に編集↓
# ENV RAILS_ENV=production

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn mariadb-client
WORKDIR /app
COPY . /app
RUN bundle config --local set path 'vendor/bundle' \
    && bundle install

# 本番環境用に編集↓
# COPY start.sh /start.sh

# RUN bundle exec rails assets:precompile
# 実行権限を与えている↓
# RUN chmod 744 /start.sh
# CMD bundle exec rails s -p ${PORT:-3000} -b 0.0.0.0
