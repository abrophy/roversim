require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:test)

task :run do
  sh "ruby bin/roversim_abrophy #{ARGV[1]}"
end

task default: :test
