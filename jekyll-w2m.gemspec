# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-w2m/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-w2m"
  spec.version       = Jekyll::W2M::VERSION
  spec.authors       = ["Kacper Duras"]
  spec.email         = ["git@kacperduras.pl"]

  spec.summary       = "A Jekyll plugin to liberate content from Microsoft Word documents (powered by word-to-markdown)."
  spec.homepage      = "https://github.com/kacperduras/jekyll-w2m"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.required_ruby_version = ">= 2.3"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r!^(test|spec|features)/!)
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r!^exe/!) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", "~> 3.8.5"
  spec.add_dependency "word-to-markdown", "~> 1.1.7"

  spec.add_development_dependency "bundler", "~> 1.17.3"
  spec.add_development_dependency "minitest", "~> 5.11.3"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rubocop", "~> 0.52.0"
end
