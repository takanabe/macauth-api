require File.expand_path('../boot', __FILE__)
require 'rails/all'
# require File.dirname(__FILE__) + "/../middleware/json_parser_error.rb"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mackun2Api
  class Application < Rails::Application
    # config.exceptions_app = ->(env) { ErrorsController.action(:handle_error).call(env) }
    config.middleware.insert_before ActionDispatch::ParamsParser, "JSONParseError"
    config.active_record.default_timezone = :utc
    config.middleware.insert_before ActionDispatch::Static, Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options, :patch, :delete]
      end
    end
  end
end

# Handle JSON Parse Error outside of Rails App
class JSONParseError
  def initialize app
    @app = app
  end

  def call env
    begin
      @app.call(env)
    rescue ActionDispatch::ParamsParser::ParseError => e
      ErrorsController.action(:handle_error).call(env)
    end
  end
end

