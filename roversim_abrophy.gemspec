lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "roversim_abrophy/version"

Gem::Specification.new do |spec|
  spec.name          = "roversim_abrophy"
  spec.version       = RoversimAbrophy::VERSION
  spec.authors       = ["Arthur Brophy"]
  spec.email         = ["artbrophy@gmail.com"]

  spec.summary       = "solution to rover problem"
  spec.description   = "Roversim is a commandline ruby gem for predicting location of a "\
    "simulated rover based on input from file"
  spec.homepage      = "http://github.com/abrophy/roversim_abrophy"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.58"
end
