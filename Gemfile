source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Formulaires
gem 'simple_form'

#Pagination
gem 'kaminari'

# Optimisation bdd (sors la liste des index à ajouter)
gem "lol_dba"

#Outil de recherche
gem "ransack" 

#Bootstrap
gem 'bootstrap-sass'

#Devise
gem 'devise'

#Cancan
gem "cancan"

# Gestion upload fichier
gem "paperclip"

# Use postgresql as the database for Active Record
group :production do
	gem 'pg'
end

group :development do
	gem "better_errors"
	gem 'sqlite3'
	gem "binding_of_caller"
	gem "rails_best_practices" # qualité de code
	gem 'brakeman', :require => false # scan des failles de sécurité
end 
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
gem 'rails_12factor', group: :production
