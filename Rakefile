# frozen_string_literal: true
apps = File.expand_path("../apps", __FILE__)
$LOAD_PATH.unshift(apps) unless $LOAD_PATH.include?(apps)

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib)

require "bundler/setup"
require "batteries"

Batteries::Tasks.new do |t|
  t.migrations.database = "::DB"

  t.migrations.setup_hook = proc do
    require "env"
    require "db"
  end
end
