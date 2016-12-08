# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'myips/version'

Gem::Specification.new do |spec|
  spec.name          = "myips"
  spec.version       = Myips::VERSION
  spec.authors       = ["ymin"]
  spec.email         = ["minsparky@gmail.com"]

  spec.summary       = %q{Myips}
  spec.description   = %q{To get local and public ip address}
  spec.homepage      = "https://github.com/ymin/myips"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'ipaddress'
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
