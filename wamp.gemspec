# -*- mode: ruby, encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wamp/version"

Gem::Specification.new do |s|
  s.name = "wamp"
  s.version = WAMP::VERSION::STRING
  s.platform = Gem::Platform::RUBY
  s.authors = ["Thomas Volkmar Worm"]
  s.email = ["tvw@s4r.de"]
  s.homepage = "https://github.com/tvw/wamp"
  s.summary = %q{Generating and managing a WAMP (Windows Apache MySQL PHP) installation.}
  s.description = %q{A set of commands to generate and manage a WAMP (Windows Apache MySQL PHP) installation.}

  s.rubyforge_project = "wamp"
  s.files = Dir["lib/**/*"] + ["Rakefile", "README.rdoc", "HISTORY.rdoc", "LICENSE.rdoc"]
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "thor", "~> 0.16.0"
  s.add_development_dependency 'rake', '>= 0.9.2'
  s.add_development_dependency 'rspec', '>= 2.11.0'
  s.add_development_dependency 'ZenTest', '>= 4.8.2'
end
