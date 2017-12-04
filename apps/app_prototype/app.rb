# frozen_string_literal: true
require "roda"
require "friendly_numbers"
require "blankman"

require_relative "models"
require_relative "helpers"

module AppPrototype
  class App < Roda
    include Helpers

    use Rack::Session::Cookie, secret: ENV.fetch("SESSION_SECRET") { File.read(".session_secret") }

    opts[:root] = __dir__
    opts[:add_script_name] = true

    plugin :render, escape: :erubi, layout: "./layout"

    route do |r|
      r.root { "Root" }
    end
  end
end
