source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.17'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'devise'
gem 'figaro'
gem 'slim-rails'
gem 'purecss-rails'
gem 'carrierwave'
gem 'sidekiq'
gem 'sinatra'
gem 'fog'
gem 'unf'
gem 's3_direct_upload'
gem 'dotenv-rails'
gem 'mini_magick'
gem 'kaminari'
gem 'activeadmin'
gem 'therubyracer', :platform=>:ruby
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'quiet_assets'
  gem 'rails_layout'
end
group :development, :test do
  gem 'sqlite3'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'thin'
  gem 'pry-rails'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'unicorn'
end
group :test do
  gem 'capybara'
  gem 'cucumber-rails', :require=>false
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem 'launchy'
  gem 'factory_girl'
  gem 'shoulda-matchers'
end
