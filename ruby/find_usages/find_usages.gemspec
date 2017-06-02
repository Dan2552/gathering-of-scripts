lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'find_usages'
  gem.version       = '0.1.0'
  gem.authors       = ['Daniel Inkpen']
  gem.email         = ['dan2552@gmail.com']
  gem.description   = %q{Find ussages}
  gem.summary       = %q{Find usages}
  gem.homepage      = 'https://github.com/Dan2552/gathering-of-scripts'
  gem.license       = 'MIT'

  gem.add_development_dependency 'rspec', '~> 3.6'
  gem.add_development_dependency 'pry', '~> 0.10.4'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
end
