ruby '2.4.2'
source 'http://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'slim-rails'

gem 'sprockets'
gem 'sass-rails'
gem 'coffee-rails'
gem 'autoprefixer-rails'
gem 'uglifier'
gem 'therubyracer', platforms: :ruby

gem 'puma', '~> 3.9'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

# Added at 2019-12-07 05:29:32 +0000 by root:
gem 'pg'
gem "sqlite3", "~> 1.3.13"
