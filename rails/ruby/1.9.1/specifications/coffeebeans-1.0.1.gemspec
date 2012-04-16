# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "coffeebeans"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["markbates"]
  s.date = "2011-05-27"
  s.description = "coffeebeans was developed by: markbates"
  s.email = "mark+github@markbates.com"
  s.extra_rdoc_files = ["LICENSE"]
  s.files = ["LICENSE"]
  s.homepage = "http://github.com/markbates/coffeebeans"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.13"
  s.summary = "coffeebeans"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<coffee-script>, [">= 0"])
      s.add_runtime_dependency(%q<actionpack>, [">= 3.0.0"])
    else
      s.add_dependency(%q<coffee-script>, [">= 0"])
      s.add_dependency(%q<actionpack>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<coffee-script>, [">= 0"])
    s.add_dependency(%q<actionpack>, [">= 3.0.0"])
  end
end
