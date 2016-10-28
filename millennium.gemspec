# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'millennium/version'

Gem::Specification.new do |spec|
  spec.name         = 'millennium'
  spec.version      = Millennium::VERSION
  spec.platform     = Gem::Platform::RUBY
  spec.authors      = ['Paulo Henrique Bruce']
  spec.email        = ['brucepaulohenrique@gmail.com']
  spec.homepage     = 'https://github.com/phbruce/millennium'
  spec.summary      = 'Ruby interface for the Millennium Eco API'
  spec.description  = 'This gem is prepared to integrate with Millennium'

  spec.required_rubygems_version = '>= 1.3.6'
  spec.license = 'MIT'

  spec.add_runtime_dependency('typhoeus', '~> 0.7')
  spec.add_runtime_dependency('json', '~> 1.8')

  spec.add_development_dependency('bundler', '~> 1.13')
  spec.add_development_dependency('rake', '~> 10.0')
  spec.add_development_dependency('rspec', '~> 3.0')

  spec.files        = Dir['README.md', 'Gemfile', 'lib/**/*']
  spec.test_files   = `git ls-files -- spec/*`.split("\n")
  spec.require_path = 'lib'
end
