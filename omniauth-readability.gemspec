# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-readability/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-readability"
  s.version     = OmniAuth::Readability::VERSION
  s.authors     = ["Benjamin Sullivan"]
  s.email       = ["bsullivan2@gmail.com"]
  s.homepage    = "https://github.com/bonsaiben/omniauth-readability"
  s.summary     = %q{OmniAuth strategy for Readability Reader API}
  s.description = %q{OmniAuth strategy for Readability Reader API}
  s.license     = "MIT"

  s.rubyforge_project = "omniauth-readability"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'multi_json', '~> 1.3'
  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
