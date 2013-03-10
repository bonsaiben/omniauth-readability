require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Readability < OmniAuth::Strategies::OAuth
      option :name, 'readability'

      option :client_options, {
        :site => 'https://www.readability.com',
        :authorize_path => '/api/rest/v1/oauth/authorize',
        :access_token_path => '/api/rest/v1/oauth/access_token',
        :request_token_path => '/api/rest/v1/oauth/request_token'
      }

      uid { raw_info['username'] }

      info do
        {
          :username           => raw_info['username'],
          :first_name           => raw_info['first_name'],
          :last_name           => raw_info['last_name']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/api/rest/v1/users/_current.json').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

    end
  end
end
