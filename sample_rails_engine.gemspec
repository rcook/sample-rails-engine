$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sample_rails_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'sample-rails-engine'
  s.version     = SampleRailsEngine::VERSION
  s.authors     = ["Richard Cook"]
  s.email       = ["rcook@rcook.org"]
  s.homepage    = 'http://example.org/'
  s.summary     = 'Summary'
  s.description = 'Description'
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.5"
end
