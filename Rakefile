# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib)

require "bundler/setup"
require "batteries"
require "app_prototype/db"

Batteries::Tasks.new do |t|
  t.migrations.database = AppPrototype::DB
end
