FROM ruby:alpine

WORKDIR /usr/src/app

# Add required build tools and libraries
RUN apk --update add --no-cache \
  # Nodejs and npm (separate packages in alpine repository)
  nodejs npm \
  # Compilation
  build-base \
  # Headers for sqlite (needed for sqlite gem)
  sqlite-dev \
  # Headers for postgresql (needed for postgres gem)
  postgresql-dev

# Install yarn
RUN npm install -g yarn

# Copy gem manifest files
COPY Gemfile* ./

# Install gem dependencies
RUN bundle install

# Install yarn dependencies
RUN yarn

# The rest of the app will be volume-mounted by docker-compose

# Start rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
