
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spectre/version'

Gem::Specification.new do |spec|
  spec.name          = "spectre"
  spec.version       = Spectre::VERSION
  spec.authors       = ["Praggy"]
  spec.email         = ["pragadeeshkumar.r@zoomcar.com"]

  spec.summary       = %q{A gateway library for all the transport protocols.}
  # spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         = ['lib/spectre.rb', 'lib/spectre/amqp/client.rb', 
                        'lib/spectre/amqp/connection.rb', 'lib/spectre/amqp/errors.rb',
                        'lib/spectre/amqp/message.rb', 'lib/spectre/http/client.rb', 
                        'lib/spectre/http/errors.rb', 'lib/spectre/http/request.rb',
                        'lib/spectre/version.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "bunny", "~> 2.8.1"
end
