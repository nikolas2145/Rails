require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Page
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    # config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}')]
    #config.I18n.available_locales = [:en, :cz]
    #config.i18n.default_locale = :cz

    config.i18n.available_locales = [:en, :cs]
    config.i18n.default_locale = :cs
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}')]
    Pagy::I18n.load(locale: 'cs')

  end


end
