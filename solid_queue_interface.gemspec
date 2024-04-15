require_relative "lib/solid_queue_interface/version"

Gem::Specification.new do |spec|
  spec.name        = "solid_queue_interface"
  spec.version     = SolidQueueInterface::VERSION
  spec.authors     = ["AquisTech"]
  spec.email       = ["aquis.tech@gmail.com"]
  spec.homepage    = "https://github.com/AquisTech/solid_queue_interface"
  spec.summary     = "UI for monitoring solid_queue"
  spec.description = "UI for monitoring solid_queue"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/AquisTech/solid_queue_interface"
  spec.metadata["changelog_uri"] = "https://github.com/AquisTech/solid_queue_interface" # TODO: Add changelog.md

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.2"
  spec.add_dependency "solid_queue", "~> 0.3.0"
  spec.add_dependency "pagy", "~> 8.1"
end
