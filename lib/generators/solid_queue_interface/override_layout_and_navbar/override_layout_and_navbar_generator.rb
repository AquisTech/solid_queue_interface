require 'rails/generators/base'

class SolidQueueInterface::OverrideLayoutAndNavbarGenerator < Rails::Generators::Base
  source_root File.expand_path(".", __dir__)

  desc <<-DESC
    This generator is used to copy solid_queue_interface layout template and navbar partial to your project where you can customize SolidQueueInterface portal as per your needs.
  DESC

  def copy_layout_and_navbar
    directory "../../../../app/views/layouts/solid_queue_interface", "app/views/layouts/solid_queue_interface"
  end
end
