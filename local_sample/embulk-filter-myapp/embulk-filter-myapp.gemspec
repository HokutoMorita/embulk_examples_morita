
Gem::Specification.new do |spec|
  spec.name          = "embulk-filter-myapp"
  spec.version       = "0.1.0"
  spec.authors       = ["HokutoMorita"]
  spec.summary       = "Myapp filter plugin for Embulk"
  spec.description   = "Myapp"
  spec.email         = ["han2210mh@gmail.com"]
  spec.licenses      = ["MIT"]
  # TODO set this: spec.homepage      = "https://github.com/han2210mh/embulk-filter-myapp"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  #spec.add_dependency 'YOUR_GEM_DEPENDENCY', ['~> YOUR_GEM_DEPENDENCY_VERSION']
  spec.add_development_dependency 'embulk', ['>= 0.9.23']
  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
