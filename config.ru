# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "env"

if ENV["RACK_ENV"] == "development"
  require "auto_reloader"

  AutoReloader.activate(reloadable_paths: ["./apps", "./lib"])

  run ->(env) {
    AutoReloader.reload! do
      require_relative "apps/boot"

      Router.call(env)
    end
  }
else
  require_relative "apps/boot"

  use Rack::CommonLogger
  run Router.freeze
end
