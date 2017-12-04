# frozen-string-literal: true
module AppPrototype
  module_function

  def boot
    # Global requires
    require "roda"
    require "friendly_numbers"
    require "blankman"

    # Local requires
    require_relative "models"
    require_relative "helpers"
    require_relative "app"
  end
end

AppPrototype.boot
