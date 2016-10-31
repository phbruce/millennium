# encoding: utf-8
module Millennium
  # lib/millennium/crm/crm.rb
  class CRM
    def initialize(endpoint, params)
      @object   = 'CRM'
      @endpoint = endpoint
      @params   = params
    end

    def run
      Millennium::Request.new(@object, @endpoint, @params).run
    end
  end
end
