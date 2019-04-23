FROM ruby:2.6.3

WORKDIR /opt/project/component-test
COPY Gemfile /opt/project/component-test/
RUN gem install cucumber rspec
RUN cd /opt/project/component-test/ && bundle install
