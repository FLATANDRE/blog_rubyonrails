require 'jwt'

class KeycloakParamsService < ApplicationService

    def initialize(token)
        @token = token
    end

    def call
        get_params_from_token
    end

    private 

    def get_params_from_token
        unless @token.nil?
            decoded_token = JWT.decode @token[:access_token], nil, false
            user = User.new(username: decoded_token[0]['given_name'], email: decoded_token[0]['preferred_username'], roles: decoded_token[0]['resource_access']['authservice-nodejs']['roles'])
        end
    end
end