# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "psycho-poker"
  spec.version       = '1.0'
  spec.authors       = ["kingartos"]
  spec.email         = ["youremail@yourdomain.com"]
  spec.summary       = %q{Choose most powerful poker hand possible on a lot of cards}
  spec.description   = %q{Try combinations on a lot of cards and return the most powerful hand}
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = ['lib/psycho-poker.rb']
  spec.executables   = ['bin/psycho-poker']
  spec.test_files    = ['tests/test_psycho-poker.rb']
  spec.require_paths = ["lib"]
end