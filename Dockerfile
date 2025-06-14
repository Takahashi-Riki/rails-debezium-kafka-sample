# syntax = docker/dockerfile:1
ARG RUBY_VERSION=3.2.2
FROM ruby:3.2.2

WORKDIR /usr/src/app

# Railsの動作に必要なOSパッケージをインストール
RUN apt-get update -qq && apt-get install -y build-essential libv8-dev libpq-dev nodejs default-mysql-client

# GemfileとGemfile.lockをコピーし、bundle installを先に実行することで
# Dockerのレイヤーキャッシュを有効にし、ビルド時間を短縮する
COPY Gemfile Gemfile.lock ./
RUN bundle install

# アプリケーションコード全体をコピー
COPY . /usr/src/app

# entrypoint.shスクリプトをコンテナにコピーし、実行権限を付与
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["bundle", "exec", "unicorn", "-p", "3000", "-c", "./config/unicorn.rb"] 