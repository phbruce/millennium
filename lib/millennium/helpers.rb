# encoding: utf-8
module Millennium
  # lib/millenium/errors.rb
  module Helpers
    def self.mount_query(params)
      params.each_with_object('') do |(key, value), query|
        query << "#{key}=#{value}&"
      end
    end
  end
end
