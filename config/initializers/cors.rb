# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept
# cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

development_client_origin = 'http://localhost:7165' if Rails.env.development?

development_client_origin ||= ENV['CLIENT_ORIGIN']

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins do |origin, _env|
      ENV['CLIENT_ORIGIN'] == '*' ||
        origin == ENV['CLIENT_ORIGIN'] ||
        origin == development_client_origin
    end
    resource '*',
             headers: :any,
             methods: %i[options head get delete patch put post]
  end
end
