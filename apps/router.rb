# frozen-string-literal: true
require "roda"

class Router < Roda
  opts[:root] = __dir__

  route do |r|
    r.run AppPrototype::App
  end
end
