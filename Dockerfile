FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /bookworm
WORKDIR /bookworm
COPY Gemfile /bookworm/Gemfile
COPY Gemfile.lock /bookworm/Gemfile.lock
RUN bundle install
COPY . /bookworm