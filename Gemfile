# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.6.3'

gem 'active_model_serializers', '~> 0.10.6'
gem 'bcrypt', '~> 3.1.11'
gem 'pg', '~> 0.21'
gem 'puma', '~> 4.3.9'
gem 'rack-cors', '~> 1.0.2', require: 'rack/cors'
gem 'rails', '~> 5.2.3'

group :development, :test do
  gem 'byebug', '~> 10.0.0', platform: :mri
  gem 'dotenv-rails', '~> 2.2.1'
  gem 'pry', '~> 0.11.3'
  gem 'pry-byebug', '~> 3.6.0'
  gem 'rspec-rails', '~> 3.7.2'
  gem 'rubocop', '~> 0.52.1'
end

group :development do
  gem 'listen', '~> 3.1.5'
  gem 'pry-rails', '~> 0.3.6'
  gem 'spring', '~> 2.0.2'
  gem 'spring-commands-rspec', '~> 1.0.4'
end

group :production do
  gem 'rails_12factor', '~> 0.0.3'
end
