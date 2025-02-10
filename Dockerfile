# Use the official Ruby image as base
FROM ruby:3.4

# Set working directory in the container
WORKDIR /app

# Copy Gemfile and Gemfile.lock to container
COPY Gemfile* ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code
COPY . .

# Expose port 8080 instead of 4567
EXPOSE 8080

# Command to run the application
CMD ["ruby", "app.rb"] 