FROM ruby:2.4.2

RUN apt-get update && apt-get install -y nodejs sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .
EXPOSE 80
ENV RAILS_ENV default
#ENV DATABASE_URL sqlite3::memory:
ENV SECRET_KEY_BASE 533dac9a17b454f5514bf46d47f967ae97aa30b12a9ea167e7dfef38b6228ed5678ddef3eb4e2dfa1da3dd81554ffccd576cb20fcba0133c0b22f94418c89a2e
RUN rails db:create
RUN rails db:migrate
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "80"]
