# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |s|
  s.name        = 'unified_ruby_sdk'
  s.version     = '0.4.89'
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['Apache-2.0']
  s.summary     = ''
  s.homepage    = 'https://github.com/unified-to/unified-ruby-sdk.git'
  s.description = 'Ruby Client SDK for Unified.to'
  s.authors     = ['Unified']
  s.metadata    = {
    'homepage_uri' => 'https://github.com/unified-to/unified-ruby-sdk.git',
    'documentation_uri' => 'https://github.com/unified-to/unified-ruby-sdk.git',
    'source_code_uri' => 'https://github.com/unified-to/unified-ruby-sdk.git'
  }

  s.files         = Dir['{lib,test}/**/*']
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 3.0'

  s.add_dependency('faraday')
  s.add_dependency('faraday-multipart')
  s.add_dependency('rack')
  s.add_dependency('rake')
  s.add_dependency('sorbet')


  s.add_development_dependency('minitest')
  s.add_development_dependency('rubocop')
  s.add_development_dependency('sorbet-runtime')
  s.add_development_dependency('tapioca')
end
