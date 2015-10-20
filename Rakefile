# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

begin
  require 'cane/rake_task'

  desc "Run cane to check quality metrics"
  Cane::RakeTask.new(:quality) do |cane|
    cane.abc_max = 12
    # cane.add_threshold 'coverage/covered_percent', :>=, 95
    cane.no_doc = false
    cane.style_exclude = ['spec/rails_helper.rb', 'spec/spec_helper.rb']
  end

  task :default => [:quality, :spec]

rescue LoadError
  warn "cane not available, quality task not provided."
end
