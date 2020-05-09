require_relative "lib/awesome_list_generator/version"

Gem::Specification.new do |spec|
  spec.name = "awesome_list_generator"
  spec.version = AwesomeListGenerator::VERSION
  spec.authors = ["Andrew Mason"]
  spec.email = ["andrewmcodes@protonmail.com"]
  spec.summary = "A simple CLI tool to help you generate an 'Awesome' list"
  spec.description = "Leverage Ruby and Liquid to transform data into a markdown file that you can use to easily create an 'Awesome' list that is easy for contributors to add to."
  spec.homepage = "https://github.com/andrewmcodes/awesome_list_generator"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "thor", "~> 1.0.1"
  spec.add_dependency "liquid", "~> 4.0.3"
  spec.add_development_dependency "standard", "~> 0.4"
end
