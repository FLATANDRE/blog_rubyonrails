require 'rest-client'

class LoremIpsumService
    attr_reader :base_url

    def initialize
        @base_url = Rails.application.config.custom_config['ipsum_api_base_url']
    end
    
    def headers
        {
            'Accept': 'application/json',
            'Content-type': 'application/json'            
        }
    end

    def gerador(paragraphs,phrases)
        url = @base_url + '/v1/geradoripsum?paragraphs=' + paragraphs.to_s + '&phrases=' + phrases.to_s
        request = RestClient.get(url, headers)
        JSON.parse(request.body, object_class: OpenStruct)
    end
end