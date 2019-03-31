
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jack/store/version"

Gem::Specification.new do |spec|
  spec.name          = "jack-store"
  spec.version       = Jack::Store::VERSION
  spec.authors       = ["LiRen Tu"]
  spec.email         = ["tuliren@gmail.com"]

  spec.summary       = %q{A simple key value store based on relational table}
  spec.description   = %q{A simple key value store based on relational table}
  spec.homepage      = "https://github.com/tuliren/jack-store"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
