# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'semantic_ui_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "semantic_ui_rails"
  spec.version       = SemanticUiRails::VERSION
  spec.authors       = ["John-Henry Liberty","Xuan Yue", "Jake Chapa"]
  spec.email         = ["johnhenry.liberty@gmail.com","xuan.cells@gmail.com", "jakechapa@gmail.com"]
  spec.summary       = %q{Integrates Semantic-UI for rails applications.}
  spec.description   = %q{A Rails gem to integrate the Semantic-UI framework into the asset pipeline.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
