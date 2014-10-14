# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-buffered-resque"
  gem.description = "Resque output plugin for fluent event collector. Has extra features like buffering and setting a worker class in the config."
  gem.homepage    = "https://github.com/hfwang/fluent-plugin-buffered-resque"
  gem.summary     = gem.description
  gem.version     = File.read("VERSION").strip
  gem.authors     = ["Hsiu-Fan Wang", "Yuichi Tateno"]
  gem.email       = "hfwang@porkbuns.net"
  gem.has_rdoc    = false
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency "fluentd", ">= 0.10.8"
  gem.add_dependency "multi_json", "~> 1.0"
  gem.add_dependency "redis-namespace",  ">= 1.0.2"

  gem.add_development_dependency "rake", ">= 0.9.2"
  gem.add_development_dependency "simplecov", ">= 0.5.4"
  gem.add_development_dependency "rr", ">= 1.0.0"
end
