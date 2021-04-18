require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)
module TClone
  class Application < Rails::Application
    config.load_defaults 5.2
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.generators do |g|
      g.helper false
      g.assets false
    end
  end
end
