# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

namespace :db do
  namespace :test do
    task :prepare do
      # RSpec calls this even though we aren't using activerecord
    end
  end
end

Rails::Application.load_tasks
