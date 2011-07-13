module TrackTweets
  class Group < Client
    class << self
      def create(attributtes)
        resource post("/groups.#{format}", :body => { :group => attributtes })
      end
      
      def find(options)
        resource get("/groups.#{format}", :query => options)
      end
    end
  end
end
