FROM ruby:3.1.0

RUN apt-get update -qq && \
  apt-get install -y apt-utils \
  build-essential \
  libpq-dev \
  vim \
  postgresql-client

WORKDIR /horse_racing

ADD Gemfile .
ADD Gemfile.lock .
RUN bundle install

ADD . /horse_racing

EXPOSE 3000
