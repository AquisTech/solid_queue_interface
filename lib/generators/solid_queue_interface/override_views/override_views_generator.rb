require 'rails/generators/base'

class SolidQueueInterface::OverrideViewsGenerator < Rails::Generators::Base
  source_root File.expand_path(".", __dir__)

  desc <<-DESC
    This generator is used to copy solid_queue_interface views to your project's `app/views` folder where you can customize SolidQueueInterface portal as per your needs.
  DESC

  def copy_views
    directory "../../../../app/views/solid_queue_interface", "app/views/solid_queue_interface"
  end
end
