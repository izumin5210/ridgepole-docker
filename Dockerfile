FROM ruby:2.6.5-alpine3.10

ENV RIDGEPOLE_VERSION 0.8.3
ENV PG_VERSION 1.1.4

RUN apk add --no-cache --update \
    ca-certificates \
    postgresql-dev \
  && apk add --no-cache --update --virtual .build-deps \
    build-base \
  && gem install ridgepole --no-document --version $RIDGEPOLE_VERSION \
  && gem install pg --no-document --version $PG_VERSION \
  && apk del .build-deps

WORKDIR /workdir

ENTRYPOINT ["ridgepole"]
