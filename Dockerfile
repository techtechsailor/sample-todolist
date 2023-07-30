FROM ruby:3.2

ENV BUNDLE_VERSION 2.3.14
ENV APP /app

RUN apt update -qq && apt install -y postgresql-client
RUN gem install bundler --version "$BUNDLE_VERSION"

RUN mkdir $APP
WORKDIR $APP
COPY Gemfile $APP/Gemfile
COPY Gemfile.lock $APP/Gemfile.lock

# bundleバージョンを指定せず、最新版にアップデートする場合のコマンド
# RUN gem update --system
# RUN bundle update --bundler

RUN bundle install
COPY . $APP

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]