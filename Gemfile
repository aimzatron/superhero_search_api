source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'dotenv-rails', groups: [:development, :test]

gem 'rails', '~> 5.1.7'
gem 'puma', '~> 3.7'
gem 'faraday'
gem 'faraday_middleware'
gem 'pg'
gem 'yard'
gem 'will_paginate', '~> 3.1.0'
gem 'api-pagination'
gem 'active_model_serializers'
gem 'rubocop'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'vcr'
  gem 'webmock'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
