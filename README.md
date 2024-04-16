# SolidQueueInterface
This gem provides interface for managing background jobs via [solid_queue](https://github.com/rails/solid_queue) gem. Apart from listing jobs, this gem also provides managing queues, processes. It also acts as a control center to perform functionalities like 'Retry Failed Job', 'Pause Queue' and 'Resume Queue'

## Installation
Add this line to your application's Gemfile:

```ruby
gem "solid_queue_interface"
```

And then execute:
```bash
$ bundle
```

## Usage
Update `config/routes.rb` to mount `SolidQueueInterface::Engine` like so:
```bash
  Rails.application.routes.draw do
    mount SolidQueueInterface::Engine => '/solid_queue_interface'

    # all your routes.
  end
```
Now you can access SolidQueueInterface at `<YOUR_URL>/solid_queue_interface`

## Customization
### CSS/UI Styling
You can use `bin/rails g solid_queue_interface:override_css` which will create `overrides.css` in your project.
You can then add your styles to that file and it will get reflected on SolidQueueInterface portal.
You can even overrides default styles of navbar, tables or pagy (pagination) for the portal.
You can refer to default styles are present in [solid_queue_interface/application.css](https://github.com/AquisTech/solid_queue_interface/blob/main/app/assets/stylesheets/solid_queue_interface/application.css)
For easy customization, `<body>` of the portal is assigned with `id` as `solid_queue_interface`.
Also, `class` is assigned in format `solid_queue_interface-<controller_name>-<action_name>` so that you can customize styles on controller-action basis.
### Views/UI
You can use `bin/rails g solid_queue_interface:override_views` to copy views to your project.
You can then customize view code as per your needs and it will get reflected on SolidQueueInterface portal.
You can keep only views that you need customization and you can delete other views so that they will be fetched from gem.

## ToDo
* Sorting on columns
* Searching on columns

## Contributing
Bug reports, feature requests and pull requests are welcome on GitHub at [https://github.com/aquistech/solid_queue_interface](https://github.com/aquistech/solid_queue_interface). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/aquistech/solid_queue_interface/blob/main/CODE_OF_CONDUCT.md).

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct
Everyone interacting in the RailsInteractiveGenerators project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/aquistech/solid_queue_interface/blob/main/CODE_OF_CONDUCT.md).