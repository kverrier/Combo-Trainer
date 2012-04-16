# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "growl_notify"

Gem::Specification.new do |s|
  s.name        = "growl_notify"
  s.version     = GrowlNotify::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Scott Davis"]
  s.email       = ["me@sdavis.info"]
  s.homepage    = "https://github.com/scottdavis/growl_notify"
  s.summary     = %q{Growl gem for ruby based on the applescript api}
  s.description = %q{Growl gem for ruby based on the applescript api}

  s.rubyforge_project = "growl_notify"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'rb-appscript'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'mocha'
  
  
end
