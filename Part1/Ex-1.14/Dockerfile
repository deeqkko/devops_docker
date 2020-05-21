FROM ruby:2.6.0

EXPOSE 3000

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY ./rails-example-project /usr/src/app

ENV RAILS_LOG_TO_STDOUT=true
RUN rails db:migrate
RUN rake assets:precompile
ENTRYPOINT ["rails","s"]
