require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:test)

task :run do
  sh "ruby lib/roversim_abrophy.rb roversim_input"
end

task default: :test
