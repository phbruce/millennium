require 'spec_helper'

describe Millennium do
  before(:each) do
    Millennium.configure do |config|
      config.user = 'OData'
      config.pass = '0d@t@123'
      config.host = 'millennium.iwise.com.br'
      config.port = 888
    end
  end

  describe '.configure' do
    it 'yields config' do
      Millennium.configure do |config|
        expect(config).to be_a(Millennium::Config)
      end
    end

    it 'sets values config' do
      Millennium::Config.user = 'OData'
      expect(Millennium::Config.user).to eq('OData')
    end
  end
end
