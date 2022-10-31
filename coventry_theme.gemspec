Gem::Specification.new do |spec|
  spec.name          = 'coventry_theme'
  spec.version       = '0.1.0'
  spec.authors       = ['Ian Cornelius']
  spec.email         = ['ab6459@coventry.ac.uk']

  spec.summary       = 'A theme for Coventry University GitHub pages.'
  spec.homepage      = 'https://github.coventry.ac.uk/ab6459/coventry_theme'

  spec.required_ruby_version = '>= 2.7.0'

  regex      = %r{^(_layouts|_includes|_sass|LICENSE|README)/i}
  spec.files = `git ls-files -z`.split("\x0").select { |f| f.match(regex) }

  spec.add_runtime_dependency 'jekyll', '>= 3.0', '<= 5.0'
  spec.add_runtime_dependency 'jekyll-avatar'
  spec.add_runtime_dependency 'jekyll-feed'
  spec.add_runtime_dependency 'jekyll-github-metadata'
  spec.add_runtime_dependency 'jekyll-include-cache'
  spec.add_runtime_dependency 'jekyll-seo-tag'
  spec.add_runtime_dependency 'jekyll-sitemap'

  spec.add_development_dependency 'html-proofer', '~> 4.0'
  spec.add_development_dependency 'rubocop', '~> 1.7'
  spec.add_development_dependency 'rubocop-github'
  spec.add_development_dependency 'rubocop-performance', '~> 1.13'
  spec.add_development_dependency 'sass', '~> 3.4'
  spec.add_development_dependency 'webrick', '~> 1.7'
  spec.metadata['rubygems_mfa_required'] = 'true'
end