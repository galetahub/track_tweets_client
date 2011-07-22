module TrackTweets
  autoload :Client, 'track_tweets/client'
  autoload :Group, 'track_tweets/group'
  autoload :TrackItem, 'track_tweets/track_item' 
  
  mattr_accessor :username
  @@username = 'demo'
  
  mattr_accessor :password
  @@password = 'demo'
  
  mattr_accessor :format
  @@format = :json
  
  mattr_accessor :api_version
  @@api_version = 'v1'
  
  mattr_accessor :group_id
  @@group_id = nil
  
  def self.setup
    yield self
  end
end

require 'track_tweets/version'
