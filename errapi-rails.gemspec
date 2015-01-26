$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "errapi-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "errapi-rails"
  s.version     = Errapi::Rails::VERSION
  s.authors     = ["Simon Oulevay"]
  s.email       = ["simon.oulevay@gmail.com"]
  s.homepage    = "https://github.com/AlphaHydrae/errapi-rails"
  s.summary     = "Errapi integration into Ruby on Rails."
  s.description = "Integrates the errapi gem into Ruby on Rails, including generators for configuration."
  s.license     = "MIT"

  s.files = Dir["{config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "errapi", "~> 0.1.2"
  s.add_development_dependency "sqlite3"
end
