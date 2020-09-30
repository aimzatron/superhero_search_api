require_relative "../../../lib/superhero_api/request.rb"

module SuperheroApi
  class Base
    attr_accessor :errors,
                  :results,
                  :biography

    def initialize(args = {})
      args.each do |name, value|
        attr_name = name.to_s.underscore
        send("#{attr_name}=", value) if respond_to?("#{attr_name}=")
      end
    end

    def self.find(name)
      response = Request.get("#{name}")
      SuperheroApi::Base.new(response)
    end
  end
end
