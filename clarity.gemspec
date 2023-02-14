$LOAD_PATH.push File.expand_path("lib", __dir__)

Gem::Specification.new do |spec|
  spec.name        = "clarity"
  spec.version     = "0.9.8"
  spec.summary     = "Web interface for grep and tail -f"
  spec.description = "Web interface for grep and tail -f"
  spec.authors     = ["Tobias Lütke", "John Tajima"]
  spec.email       = ["tobi@shopify.com", "john@shopify.com"]
  spec.files       = ["lib/clarity.rb"]
  spec.homepage    =
    "https://rubygems.org/gems/clarity"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/teamsafelink/clarity"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{lib,bin}/**/*", "Rakefile", "README.md"]
  spec.bindir = 'bin'
  spec.executables << 'clarity'

  spec.add_runtime_dependency "eventmachine", ">= 0.12.10"
  spec.add_runtime_dependency "eventmachine_httpserver", ">= 0.2.0"
  spec.add_runtime_dependency "json", ">= 1.0.0"
end

#   self.developer 'Tobias Lütke', 'tobi@shopify.com'
#   self.developer 'John Tajima', 'john@shopify.com'
#   self.summary = 'Web interface for grep and tail -f'  
#   self.post_install_message = 'PostInstall.txt'  
#   self.readme_file          = 'README.rdoc'  
#   self.extra_deps           = [['eventmachine','>= 0.12.10'], ['eventmachine_httpserver','>= 0.2.0'], ["json", ">= 1.0.0"]]
#   self.test_globs           = ['test/**/*_test.rb']
