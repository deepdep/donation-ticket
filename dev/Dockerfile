# syntax = docker/dockerfile:1

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version and Gemfile
ARG RUBY_VERSION=3.2.2
FROM ruby:$RUBY_VERSION-slim


# Rails app lives here
WORKDIR /rails

# Set production environment
ENV RAILS_ENV="development"


# Install packages needed to build gems
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git libpq-dev libvips pkg-config curl postgresql-client

# Install application gems
COPY .ruby-version Gemfile ./
RUN bundle install --jobs 20 --retry 5

# Copy application code
COPY . .


# Start the server by default, this can be overwritten at runtime
EXPOSE 3000
ENV RAILS_SERVE_STATIC_FILES 1