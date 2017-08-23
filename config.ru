# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative "env"

if ENV["RACK_ENV"] == "development"
  require "auto_reloader"

  AutoReloader.activate(reloadable_paths: ["./lib"])

  run ->(env) {
    AutoReloader.reload! do
      require "app_prototype/router"

      AppPrototype::Router.call(env)
    end
  }
else
  require "app_prototype/router"

  use Rack::CommonLogger
  run AppPrototype::Router.freeze
end
