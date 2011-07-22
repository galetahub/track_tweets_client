module TrackTweets
  class TrackItem < Client
    class << self
      def create(group_id, attributtes)
        resource post("/groups/#{group_id}/track_items.#{format}", :body => { :track_item => attributtes })
      end
      
      def all(group_id, options = {})
        resource get("/groups/#{group_id}/track_items.#{format}", :query => options)
      end
      
      def find(id, options = {})
        resource get("/track_items/#{id}.#{format}", :query => options)
      end
      
      def delete(id)
        resource delete("/track_items/#{id}.#{format}")
      end
      
      def tweets(id, options = {})
        resource get("/track_items/#{id}/tweets.#{format}", :query => options)
      end
    end
  end
end
