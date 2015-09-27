lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sprockets/pretty_manifest/version'

Gem::Specification.new do |spec|
  spec.name = "sprockets-pretty_manifest"
  spec.version = Sprockets::PrettyManifest::VERSION
  spec.authors = ["Hugo Duksis"]
  spec.email = ["duksis@gmail.com"]
  spec.summary = %q{Forces sprockets to create a human readable manifest file}
  spec.description = %q{In case you track your manifests file in source control this will make your diffs readable.}
  spec.homepage = "http://github.com/duksis/sprockets-pretty_manifest"
  spec.license = "MIT"

  spec.files = Dir["README.md", "LICENSE", "lib/**/*.rb"]
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'sprockets', [">= 2.0", "< 5.0"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
