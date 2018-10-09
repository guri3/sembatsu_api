FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sembatsu
WORKDIR /sembatsu
COPY Gemfile /sembatsu/Gemfile
COPY Gemfile.lock /sembatsu/Gemfile.lock
RUN bundle install
COPY . /sembatsu
