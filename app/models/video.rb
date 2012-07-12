class Video < ActiveRecord::Base


before_save :get_content  
  
  
  make_flaggable :vote
  has_one :vidvid
  belongs_to :user
  
  validates :viddy, :presence => true
        

  validates :title, :presence => true, :length => { :maximum => 140}
  
  
  attr_accessible :title, :user_id, :viddy, :content, :typical, :content



 def get_content

if self.typical == "tweet"
  response = HTTParty.get("https://api.twitter.com/1/statuses/oembed.json?id=#{self.viddy.scan(/\d+/).join}")  
  @response = response['html']
 self.content = @response

  end
end



end
