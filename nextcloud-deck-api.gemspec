# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nextcloud-deck-api'

Gem::Specification.new do |s|
  s.name = 'nextcloud-deck-api'
  s.version = DeckAPI::VERSION
  s.date = '2020-07-12'
  s.summary = 'Interact with the API of the Deck application for Nextcloud.'
  s.description = ''
  s.authors = ['Pamplemousse']
  s.email = 'xavier.maso@net-c.com'
  s.files = Dir['lib/**/*.rb']
  s.homepage = 'https://github.com/Pamplemousse/nextcloud-deck-api'
  s.license = 'MIT'

  s.add_runtime_dependency 'faraday', '~>1.0'
  s.add_runtime_dependency 'dry-struct', '~>1.0'

  s.add_development_dependency 'bundler', '~> 1.17'
  s.add_development_dependency 'pry', '~>0.13'
  s.add_development_dependency 'pry-byebug', '~>3.9'
  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'rspec', '~>3.9'
  s.add_development_dependency 'rubocop', '~>0.88'
end
