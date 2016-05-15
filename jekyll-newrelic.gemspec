# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-newrelic/version'

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-newrelic'
  spec.version       = Jekyll::Newrelic::VERSION
  spec.authors       = ['Brint O\'Hearn']
  spec.email         = ['brintly@gmail.com']
  spec.summary       = 'Add New Relic Browser to your Jekyll site.'
  spec.description   = 'Adds New Relic Browser javascript for more '\
                       'comprehensive user metrics.'
  spec.homepage      = 'https://github.com/brint/jekyll-newrelic'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f|
    f.match(%r{^(test|spec|features)/})
  }

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this
  # section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect pushes.'
  end

  spec.add_dependency 'jekyll', '~> 3.0'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 11.0'
  spec.add_development_dependency 'rubocop', '~> 0.40'
end
