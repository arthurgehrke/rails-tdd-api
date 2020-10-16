FROM ruby:2.7.1

LABEL maintainer="Arthur Gehrke <arthurgehrke07@gmail.com>"

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
nodejs yarn build-essential libpq-dev imagemagick git-all nano

RUN gem install bundler

RUN gem install rails

RUN mkdir -p /usr/app/rails-tdd-api

ENV APP=/usr/app/rails-tdd-api

WORKDIR $APP

ADD Gemfile $APP 
ADD Gemfile.lock $APP 

RUN bundle install

COPY . $APP

CMD ["rails", "server"]
