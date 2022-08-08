require 'rest-client'

class LoginService < ApplicationService
    attr_reader :base_url
  
    def initialize(username, password)
        @logger = Logger.new(STDOUT)
        @username = username
        @password = password
        @base_url = Rails.application.config.custom_config['auth_service_url']
    end

    def call
        get_token
    end

    private 
        def get_token
            @logger.info "Getting token: #{@username} #{@password}"
            url = @base_url + '/token?username=' + @username + '&password=' + @password
            request = RestClient.get(url, headers)
            JSON.parse(request.body, object_class: OpenStruct)
        end

        def headers
            {
                'Accept': 'application/json'     
            }
        end
end