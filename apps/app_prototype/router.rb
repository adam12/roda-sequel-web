# frozen_string_literal: true
require_relative "boot"
require_relative "web_app"

module AppPrototype
  class Router < Roda
    plugin :public

    route do |r|
      r.public

      r.run WebApp
    end
  end
end
