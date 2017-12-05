# frozen_string_literal: true
module AppPrototype
  module Helpers
    def handle_validation_failure(view_name)
      yield
    rescue Sequel::ValidationFailed
      view(view_name)
    end
  end
end
