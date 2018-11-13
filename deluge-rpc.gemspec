# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deluge/rpc/version'

Gem::Specification.new do |spec|
  spec.name          = "deluge-rpc"
  spec.version       = Deluge::Rpc::VERSION
  spec.authors       = ["Igor Yamolov"]
  spec.email         = ["clouster@yandex.ru"]
  spec.summary       = %q{Deluge RPC protocol wrapper}
  spec.description   = %q{Communicate with Deluge torrent client via RPC protocol}
  spec.homepage      = "https://github.com/t3hk0d3/deluge-rpc"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'concurrent-ruby', '>= 0.7', '< 1.1'
  spec.add_dependency 'rencoder', '~> 0.1'
  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rspec', '~> 3.6'
end
