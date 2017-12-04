# frozen-string-literal: true

module RequireAll
  def require_all(glob)
    Dir[glob].each { |f| require f }
  end
end
include RequireAll
