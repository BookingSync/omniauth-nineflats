require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class NineFlats < OmniAuth::Strategies::OAuth2
      option :name, 'nineflats'

      option :client_options, {
        :site => 'http://9flats.github.io/api_docs/',
        :authorize_url => "https://api.9flats.com/oauth/authorize",
        :token_url => "https://api.9flats.com/oauth/token"
      }
    end
  end
end

OmniAuth.config.add_camelization 'nineflats', 'NineFlats'
