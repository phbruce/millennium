# encoding: utf-8
module Millennium
  # lib/millenium/errors.rb
  module Helpers
    def self.mount_query(params)
      params.each_with_object('') do |(key, value), query|
        query << "#{key}=#{value}&"
      end
    end

    def self.full_endpoint(object, endpoint, params)
      return "#{object}/#{endpoint}?$format=json" if params.empty?
      query = mount_query(params)
      "#{object}/#{endpoint}?#{query}$format=json"
    end
  end
end
