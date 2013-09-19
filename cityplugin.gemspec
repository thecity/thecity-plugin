# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cityplugin/version'

Gem::Specification.new do |gem|
  gem.name          = "cityplugin"
  gem.version       = Cityplugin::VERSION
  gem.authors       = ["Mark Blair"]
  gem.email         = ["mark@onthecity.org"]
  gem.description   = %q{Provides methods to decrypt data coming from The City plugin framework}
  gem.summary       = %q{Provides methods to decrypt data coming from The City plugin framework}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
