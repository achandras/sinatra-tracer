
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sinatra/instrumentation/version"

Gem::Specification.new do |spec|
  spec.name          = "sinatra-instrumentation"
  spec.version       = Sinatra::Instrumentation::VERSION
  spec.authors       = ["Ashwin Chandrasekar"]
  spec.email         = ["achandrasekar@signalfx.com"]

  spec.summary       = %q{Instrumentation for Sinatra applications}
  spec.description   = %q{OpenTracing compatible auto-instrumentation for Sinatra web applications.}
  spec.homepage      = "http://github.com/signalfx/ruby-sinatra-instrumentation"
  spec.license       = "Apache-2.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "opentracing_test_tracer", "~> 0.1"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.60"
  spec.add_development_dependency "rubocop-rspec", "~> 1.30.0"
  spec.add_development_dependency "appraisal", "~> 2.2"
  spec.add_development_dependency "sinatra", "~> 1.4"
  spec.add_development_dependency "rack-test", "~> 1.1"

  spec.add_dependency "opentracing", "~> 0.3"
  spec.add_dependency "rack-tracer", "~>0.8"

end
