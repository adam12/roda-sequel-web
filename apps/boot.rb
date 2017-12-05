# frozen-string-literal: true
require "require_all"

module App
  module_function

  def root
    Pathname(__dir__)
  end

  def boot(app_names)
    Array(app_names).each do |app_name|
      require_relative "#{app_name}/boot"
    end
  end
end

App.boot(%w(app_prototype))

require_relative "router"
