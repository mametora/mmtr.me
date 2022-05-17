FROM ruby:3.1.2

WORKDIR /jekyll

COPY Gemfile Gemfile.lock /jekyll/
RUN bundle install

COPY . /jekyll

CMD ["bundle", "exec", "jekyll", "serve", "--host=0.0.0.0", "--watch"]
