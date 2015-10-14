# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rfc5646/version'

Gem::Specification.new do |spec|
  spec.name          = 'rfc5646'
  spec.version       = Rfc5646::VERSION
  spec.authors       = ['Artyom Bolshakov']
  spec.email         = ['abolshakov@spbtv.com']

  spec.summary       = 'Parsing RFC 5646 locale'
  spec.description   = 'Parsing RFC 5646 locale'
  spec.homepage      = 'https://github.com/SPBTV/rfc5646'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'activesupport', '>= 3.0.0'
  spec.add_runtime_dependency 'i18n', '~> 0.6'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'rubocop', '~> 0.34.2'
end
