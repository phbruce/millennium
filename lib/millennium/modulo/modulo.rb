# encoding: utf-8
module Millennium
  # lib/millennium/modulo/modulo.rb
  class Modulo
    class << self
      OBJECT = 'Module'.freeze
      private_constant :OBJECT

      ENDPOINTS_NAMES = { permissions: 'Permissions' }.freeze
      private_constant :ENDPOINTS_NAMES

      ENDPOINTS_NAMES.each do |method_name, endpoint|
        define_method method_name do |params = {}|
          url = "#{OBJECT}/#{endpoint}?$format=json"
          unless params.empty?
            query = Millennium::Helpers.mount_query(params)
            url = "#{OBJECT}/#{endpoint}?#{query}$format=json"
          end
          Millennium::Request.run(url)
        end
      end
    end
  end
end
