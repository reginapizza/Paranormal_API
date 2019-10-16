# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
# require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
# require 'action_mailer/railtie'
# require 'action_view/railtie'
# require 'action_cable/engine'
# require 'sprockets/railtie'
# require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PokeAPI
  # :nodoc:
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified
    # here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true

    config.load_defaults 5.1
    # By default in Rails 4 loading an AR model won't establish a connection
    # to the database until AR needs to fetch database therefore in the console
    # asking for a model like Patient will message
    # Patient (call 'Patient.connection' to establish a connection)
    # and will not show the column names since not connected to database.
    # A call such as Patient.all is required to connect to the database.
    #
    # Overriding to  establish a connection to the database when in the console
    console do
      ActiveRecord::Base.connection
    end
  end
end
