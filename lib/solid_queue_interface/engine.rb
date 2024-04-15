require "pagy"

module SolidQueueInterface
  class Engine < ::Rails::Engine
    isolate_namespace SolidQueueInterface

    initializer "panoptic.assets.precompile" do |app|
      app.config.assets.precompile += %w[solid_queue_interface_manifest.js]
    end
  end
end
