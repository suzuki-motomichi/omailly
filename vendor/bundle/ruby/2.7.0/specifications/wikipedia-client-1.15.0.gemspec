# -*- encoding: utf-8 -*-
# stub: wikipedia-client 1.15.0 ruby lib lib

Gem::Specification.new do |s|
  s.name = "wikipedia-client".freeze
  s.version = "1.15.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "lib".freeze]
  s.authors = ["Cyril David".freeze, "Ken Pratt".freeze, "Mike Haugland".freeze, "Aishwarya Subramanian".freeze, "Pietro Menna".freeze, "Sophie Rapoport".freeze]
  s.date = "2021-07-06"
  s.description = "Ruby client for the Wikipedia API".freeze
  s.email = "ken@kenpratt.net".freeze
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "http://github.com/kenpratt/wikipedia-client".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--title".freeze, "wikipedia-client".freeze, "--main".freeze, "-ri".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "Ruby client for the Wikipedia API".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<addressable>.freeze, ["~> 2.7"])
  else
    s.add_dependency(%q<addressable>.freeze, ["~> 2.7"])
  end
end
