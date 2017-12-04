# frozen_string_literal: true
lib = File.expand_path("../../../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

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
  end

  def require_folder(folder)
    require_glob(__dir__ + "/#{folder}/**/*.rb")
  end

  def require_glob(glob)
    Dir[glob].each { |f| require f }
  end
end

AppPrototype.boot

include AppPrototype if defined?(Pry.main)
