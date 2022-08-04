class LoginService < ApplicationService
    def initialize(username, password)
        @logger = Logger.new(STDOUT)
        @username = username
        @password = password
    end

    def call
        get_token
    end

    private 
        def get_token
            @logger.info "Getting token: #{@username} #{@password}"
            token = 'affasjfldsgkfsjgsldgksdk4ewl45r42kt3lk45j34k5j345l3k4j5345k34n43534jkfgkjkfjsdkfj3k45kgfdkfg'
        end
end