FROM ruby:3.1.6

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app

# Set Rails environment to test
ENV RAILS_ENV test

# Run RSpec tests
CMD ["bundle", "exec", "rspec"]