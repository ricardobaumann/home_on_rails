FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential nodejs npm nodejs-legacy mysql-client vim
RUN npm install -g phantomjs

RUN mkdir /home_on_rails

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

ADD . /home_on_rails
WORKDIR /home_on_rails
CMD RAILS_ENV=production rake db:migrate && RAILS_ENV=production rails s -b 0.0.0.0