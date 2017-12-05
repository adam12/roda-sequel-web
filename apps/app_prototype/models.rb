# frozen_string_literal: true
require "db"

module AppPrototype
  Model = Class.new(Sequel::Model) do

  end

  Model.def_Model(self)
  Model.db = ::DB
  Model.default_association_options[:class_namespace] = self.name

  Model.plugin :auto_validations
  Model.plugin :validation_helpers

  require_all(__dir__ + "/models/**/*.rb")
end
