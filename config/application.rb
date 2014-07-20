require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AngularJSWorkshopsBackend
  class Application < Rails::Application

    # Allow cross-domain requests
    config.middleware.insert_after Rails::Rack::Logger, Rack::Cors, logger: Rails.logger do
      allow do
        origins "*"
        resource '*', headers: :any, methods: %i[get post patch put delete options]
      end
    end
  end
end
