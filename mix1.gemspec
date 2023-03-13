# frozen_string_literal: true

require_relative "lib/mix1/version"

Gem::Specification.new do |spec|
  spec.name = "mix1"
  spec.version = Mix1::VERSION
  spec.authors = ["Cyberarm"]
  spec.email = ["matthewlikesrobots@gmail.com"]

  spec.summary = "Read and write Westwood's MIX1 format (.mix) used in Command & Conquer: Renegade and other games."
  spec.description = "A gem for reading and writing Westwood's MIX1 format (.mix) used in Command & Conquer: Renegade and other games."
  spec.homepage = "https://github.com/cyberarm/mix1"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/cyberarm/cyberarm_engine/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "digest-crc", "~> 0.6"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
