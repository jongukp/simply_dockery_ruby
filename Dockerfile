FROM ruby:2.6.3

RUN mkdir -p opt/service/app
WORKDIR /opt/service/app
COPY ./app/* /opt/service/app/
RUN ls -l /opt/service/app
COPY init.d/start.sh /opt/service/start.sh

RUN gem install bundler:2.0.1
RUN bundle install

ENTRYPOINT ["/opt/service/start.sh"]
