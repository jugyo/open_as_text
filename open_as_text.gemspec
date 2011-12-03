# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "open_as_text/version"

Gem::Specification.new do |s|
  s.name        = "open_as_text"
  s.version     = OpenAsText::VERSION
  s.authors     = ["jugyo"]
  s.email       = ["jugyo.org@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Object#open_as_text}
  s.description = %q{open an object as text}

  s.rubyforge_project = "open_as_text"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "launchy"
end
