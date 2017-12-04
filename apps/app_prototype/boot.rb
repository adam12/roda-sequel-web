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

  def require_folder(folder)
    require_glob(__dir__ + "/#{folder}/**/*.rb")
  end

  def require_glob(glob)
    Dir[glob].each { |f| require f }
  end
end

AppPrototype.boot
