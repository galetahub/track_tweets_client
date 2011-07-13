module TrackTweets
  autoload :Client, 'track_tweets/client'
  autoload :Group, 'track_tweets/group' 
  
  mattr_accessor :username
  @@username = 'demo'
  
  mattr_accessor :password
  @@password = 'demo'
  
  mattr_accessor :format
  @@format = :json
  
  mattr_accessor :api_version
  @@api_version = 'v1'
  
  def self.setup
    yield self
  end
end

require 'track_tweets/version'
