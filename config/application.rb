require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"

Bundler.require(*Rails.groups)

module Seed
  class Application < Rails::Application
    config.load_defaults 7.2
    config.api_only = true
    config.eager_load = Rails.env.production?
    config.secret_key_base = if Rails.env.production?
      ENV.fetch("SECRET_KEY_BASE")
    else
      ENV.fetch("SECRET_KEY_BASE", "dev-only-not-secret")
    end
    config.hosts.clear
  end
end
