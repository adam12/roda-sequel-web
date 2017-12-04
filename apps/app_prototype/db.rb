# frozen_string_literal: true
require "sequel"
require "logger"
require "env"

module AppPrototype
  DB = Sequel.connect(ENV.fetch("DATABASE_URL"))
  DB.loggers << Logger.new($stdout) if DB.loggers.empty?
end
