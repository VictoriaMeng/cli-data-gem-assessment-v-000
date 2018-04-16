
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "game_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "game_gem"
  spec.version       = GameGem::VERSION
  spec.authors       = ["'Victoria Meng'"]
  spec.email         = ["'nights1ststar@protonmail.com'"]

  spec.summary       = %q{Scrapes and prints top-selling video games on Steam}
  spec.description   = %q{Scrapes and prints top-selling video games on Steam}
  spec.homepage      = "https://github.com/VictoriaMeng/video-games-cli-gem"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "require_all"
end
