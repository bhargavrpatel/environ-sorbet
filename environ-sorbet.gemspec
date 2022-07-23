# frozen_string_literal: true

require_relative "lib/environ-sorbet/version"

Gem::Specification.new do |spec|
  spec.name = "environ-sorbet"
  spec.version = EnvironSorbet::VERSION
  spec.authors = ["bhargavrpatel"]
  spec.email = ["opensource@colloquial.me"]

  spec.summary = "Typed environment variables"
  spec.description = "Allows users to parse environment variables and not worry about types and type conversion"
  spec.homepage = "https://github.com/bhargavrpatel/environ-sorbet"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  if spec.respond_to?(:metadata)
    spec.metadata["rubygems_mfa_required"] = "true"
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
    spec.metadata["source_code_uri"] = "https://github.com/bhargavrpatel/environ-sorbet"
    spec.metadata["changelog_uri"] = "https://github.com/bhargavrpatel/environ-sorbet/rbs/blob/master/CHANGELOG.md"
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
