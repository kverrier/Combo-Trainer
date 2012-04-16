# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "growl_notify"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Scott Davis"]
  s.date = "2011-10-05"
  s.description = "Growl gem for ruby based on the applescript api"
  s.email = ["me@sdavis.info"]
  s.homepage = "https://github.com/scottdavis/growl_notify"
  s.require_paths = ["lib"]
  s.rubyforge_project = "growl_notify"
  s.rubygems_version = "1.8.13"
  s.summary = "Growl gem for ruby based on the applescript api"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rb-appscript>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<rb-appscript>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<rb-appscript>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
