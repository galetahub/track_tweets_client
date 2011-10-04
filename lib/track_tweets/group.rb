module TrackTweets
  class Group < Client
    class << self
      def create(attributtes)
        resource post("/groups.#{format}", :body => { :group => attributtes })
      end
      
      def all(options = {})
        resource get("/groups.#{format}", :query => options)
      end
      
      def find(id, options = {})
        resource get("/groups/#{id}.#{format}", :query => options)
      end
      
      def destroy(id)
        resource delete("/groups/#{id}.#{format}")
      end
    end
  end
end
