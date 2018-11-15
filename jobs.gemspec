$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jobs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jobs"
  s.version     = Jobs::VERSION
  s.authors     = ["Gk Parish-Philp", "Michael Ferguson"]
  s.email       = ["gk@gkparishphilp.com"]
  s.homepage    = "http://gkparishphilp.com"
  s.summary     = "Jobs is a task and work organizer for Rails."
  s.description = "Pulitzer is a task and work organizer for Rails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"
  s.add_dependency "scuttlebutt"

  s.add_development_dependency "sqlite3"
end
