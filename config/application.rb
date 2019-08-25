require_relative 'boot'

require 'rails/all'


Bundler.require(*Rails.groups)

module MusicBillboard
  class Application < Rails::Application
    config.load_defaults 6.0
    config.active_record.belongs_to_required_by_default = false

  end
end
