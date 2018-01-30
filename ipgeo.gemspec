Gem::Specification.new do |s|
  s.name          = "ipgeo"
  s.description   = %q{A client for communicating with an IPGeo server}
  s.summary       = s.description
  s.homepage      = "https://github.com/adamcooke/ipgeo-ruby"
  s.version       = '1.0.1'
  s.files         = Dir.glob("{lib}/**/*")
  s.require_paths = ["lib"]
  s.authors       = ["Adam Cooke"]
  s.email         = ["me@adamcooke.io"]
  s.licenses      = ['MIT']
  s.add_runtime_dependency("json")
end
