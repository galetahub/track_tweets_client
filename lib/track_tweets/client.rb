require "httparty"
require "ostruct"
require "json"

module TrackTweets
  class Client < OpenStruct
    include ::HTTParty
    
    #base_uri File.join("http://tweets.aimbulance.com", "api", TrackTweets.api_version)
    base_uri File.join("http://127.0.0.1:3000", "api", TrackTweets.api_version)
    basic_auth TrackTweets.username, TrackTweets.password
    format TrackTweets.format
    
    class << self
      
      protected
      
        def resource(response)
          if response && [200, 201].include?(response.code)
            body = post_parse(response.parsed_response)
            new(body)
          else
            nil
          end
        end
        
        def post_parse(body)
          return body unless body.is_a?(String)
          
          case format
            when :json then JSON.parse(body)
            when :xml then Nokogiri::XML.parse(body)
          end
        end
    end
  end
end
