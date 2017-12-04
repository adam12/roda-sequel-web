# frozen-string-literal: true
require "sequel"
require "logger"
require "env"

DB = Sequel.connect(ENV.fetch("DATABASE_URL"), logger: Logger.new($stdout))
Sequel.extension :symbol_aref
