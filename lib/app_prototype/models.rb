# frozen_string_literal: true
require_relative "db"

module AppPrototype
  Model = Class.new(Sequel::Model) do
    def forme_namespace
      super.split("/").last
    end
  end

  Model.db = DB

  Model.plugin :auto_validations
  Model.plugin :validation_helpers
  Model.plugin :forme

  require_glob(__dir__ + "/models/**/*.rb")
end
