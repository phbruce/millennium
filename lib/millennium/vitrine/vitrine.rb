# encoding: utf-8
module Millennium
  # lib/millennium/vitrine/vitrine.rb
  class Vitrine
    def initialize(endpoint, params)
      @object   = 'Vitrine'
      @endpoint = endpoint
      @params   = params
    end

    def run
      Millennium::Request.new(@object, @endpoint, @params).run
    end
  end
end
