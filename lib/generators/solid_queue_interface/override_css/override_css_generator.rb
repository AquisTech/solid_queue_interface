require 'rails/generators/base'

class SolidQueueInterface::OverrideCssGenerator < Rails::Generators::Base
  source_root File.expand_path(".", __dir__)

  desc <<-DESC
    Creates blank `overrides.css` into your project.
    You can add styles to that file to override default styling of table, navbar and pagy for SolidQueueInterface portal.
  DESC

  def copy_overrides_css_file
    copy_file "../../../../app/assets/stylesheets/solid_queue_interface/overrides.css", "app/assets/stylesheets/solid_queue_interface/overrides.css"
  end
end
