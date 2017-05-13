FROM ruby:2.4.1

RUN mkdir -p /code  /config

WORKDIR /code

ADD Guardfile /config
ADD .reek /config
ADD .rubocop.yml /config

RUN gem install rubocop reek guard guard-rubocop guard-reek

CMD ["guard", "--guardfile", "/config/Guardfile", "--no-bundler-warning", "--group", "drax_is_watching"]
