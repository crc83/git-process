require File.expand_path('../lib/git-process/version', __FILE__)

gemspec = Gem::Specification.new do |gem|
  gem.authors       = ["Jim Moore"]
  gem.email         = ["moore.jim@gmail.com"]
  gem.description   = %q{A set of scripts to make working with git easier and more consistent}
  gem.summary       = %q{A set of scripts for a good git process}
  gem.homepage      = "https://github.com/halyph/git-process"
  gem.license       = 'ASL2'

  gem.add_dependency "octokit", "~> 1.4.0" # GitHub API
  gem.add_dependency "json", "~> 1.7.3"
  gem.add_dependency "trollop", "~> 1.16.2" # CLI options parser
  # gem.add_dependency  "thor", "~>0.16.0"
  # gem.add_dependency "highline", "1.6.13" # user CLI interaction. There is a bug in 1.6.14

  gem.files         = `git ls-files`.split($\).delete_if{|f| f =~ /^\./}
  
  # I preffer to hide this exec for now
  # gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "git-process"
  gem.require_paths = ["lib"]
  gem.version       = GitProc::Version::STRING
  gem.platform      = Gem::Platform::RUBY
  gem.required_ruby_version = '>= 1.8.7'
end
