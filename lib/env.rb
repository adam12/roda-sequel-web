# frozen-string-literal: true
require "dotenv"

env = (ENV["RACK_ENV"] ||= "development")

dotfiles = [
  ".env.#{env}.local",
  (".env.local" unless env == "test"),
  ".env.#{env}",
  ".env"
].compact

Dotenv.load(*dotfiles)
