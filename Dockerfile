FROM ruby:2.5.3
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /marketplace-example
WORKDIR /marketplace-example
COPY Gemfile /marketplace-example/Gemfile
COPY Gemfile.lock /marketplace-example/Gemfile.lock
RUN bundle install
COPY . /marketplace-example

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 80

# Start the main process.
CMD ["rails", "server", "-b", "lvh.me"]