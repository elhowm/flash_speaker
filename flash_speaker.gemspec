# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flash_speaker/version'

Gem::Specification.new do |spec|
  spec.name          = 'flash_speaker'
  spec.version       = FlashSpeaker::VERSION
  spec.authors       = ['Kris Aberfort']
  spec.email         = ['elhowm@gmail.com']
  spec.summary       = 'Simplify organizing your flash messages'
  spec.description   = <<-TEXT
    Help to organize and minimize boring flash messages code in controllers.
    Also it requires using internationalization i18n gem.
  TEXT
  spec.homepage      = 'http://rubygems.org/gems/flash_speaker'
  spec.license       = 'MIT'

  spec.require_paths = ['lib']

  spec.add_dependency 'rails-i18n', '~> 4.0.0'
end
