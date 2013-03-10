require 'spec_helper'

describe OmniAuth::Strategies::Readability do
  subject do
    OmniAuth::Strategies::Readability.new({})
  end

  context 'client options' do
    it 'should have correct name' do
      expect(subject.options.name).to eq('readability')
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('https://www.readability.com')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('https://www.readability.com/api/rest/v1/oauth/authorize')
    end

    it 'should have correct token url' do
      expect(subject.options.client_options.token_url).to eq('https://www.readability.com/api/rest/v1/oauth/access_token')
    end
  end
end
