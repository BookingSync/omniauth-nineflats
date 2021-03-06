# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth/nineflats/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Sebastien Grosjean"]
  gem.email = ["dev@bookingsync.com"]
  gem.description = %q{An OmniAuth 1.0 strategy for 9Flats oauth2 identification.}
  gem.summary = %q{An OmniAuth 1.0 strategy for 9Flats oauth2 identification.}
  gem.homepage = "https://github.com/BookingSync/omniauth-nineflats"

  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name = "omniauth-nineflats"
  gem.require_paths = ["lib"]
  gem.version = OmniAuth::NineFlats::VERSION

  gem.add_dependency 'omniauth', '~> 1.1'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'

  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rake'
end