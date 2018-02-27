FROM ruby:2.3.5

ENV APP_ROOT /app

WORKDIR $APP_ROOT

COPY . .

RUN bundle install -j4

COPY . $APP_ROOT

ENTRYPOINT ["/bin/sh", "-c", "while true; do echo hello world; sleep 1; done"]
