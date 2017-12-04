# frozen_string_literal: true
require_relative "boot"

module AppPrototype
  class WebApp < Roda
    include Helpers

    use Rack::Session::Cookie, secret: ENV.fetch("SESSION_SECRET") { File.read(".session_secret") }

    opts[:root] = __dir__
    opts[:add_script_name] = true

    plugin :forme
    plugin :render, escape: :erubi, layout: "./layout"

    route do |r|
      r.root { "Root" }
    end
  end
end

