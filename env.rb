ENV["RACK_ENV"] ||= "development"
ENV["DATABASE_URL"] ||= case ENV["RACK_ENV"]
                        when "development" then "postgres://localhost/app_prototype_development"
                        when "test" then "postgres://localhost/app_prototype_test"
                        end

begin
  require_relative "env.development"
rescue LoadError
end
