# Use the official Ruby image as the base image
FROM ruby:3.1.2

# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    yarn

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the application code to the container
COPY . .

# Set environment variables
ENV RAILS_ENV=production
ENV SECRET_KEY_BASE=your_secret_key_base

# Precompile assets
RUN bundle exec rails assets:precompile

# Start the Rails server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]