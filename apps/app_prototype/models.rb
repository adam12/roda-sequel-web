# frozen_string_literal: true
require_relative "db"

module AppPrototype
  Model = Class.new(Sequel::Model) do

  end

  Model.db = DB

  Model.plugin :auto_validations
  Model.plugin :validation_helpers

  require_all(__dir__ + "/models/**/*.rb")
end
