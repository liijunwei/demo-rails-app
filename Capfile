require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"

install_plugin Capistrano::SCM::Git

require "capistrano/rails/migrations"
require "capistrano/rbenv"
require "capistrano/bundler"
require 'capistrano/puma'
require 'capistrano/puma/nginx'
# require "capistrano/rails/assets"

install_plugin Capistrano::Puma
install_plugin Capistrano::Puma::Nginx

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
