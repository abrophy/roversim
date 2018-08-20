require 'bundler/setup'

require_relative '../lib/controller'
require_relative '../lib/rover'
require_relative '../lib/zone'
require_relative '../lib/tracers/north'
require_relative '../lib/tracers/east'
require_relative '../lib/tracers/south'
require_relative '../lib/tracers/west'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
