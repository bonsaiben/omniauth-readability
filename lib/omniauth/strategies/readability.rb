require 'omniauth-oauth'

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

      uid { raw_info['id'] }

      def raw_info
        @data ||= access_token.params['user']
      end

    end
  end
end
