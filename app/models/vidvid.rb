class Vidvid < ActiveRecord::Base
  make_flaggable :vote
  belongs_to :video
  belongs_to :user
  before_save :content
  validates :viddy1, :presence => true, :format => { :with => /^http/,
         :message => "Only links allowed" }

  validates :title1, :presence => true, :length => { :maximum => 140}
  
  attr_accessible :title1, :user_id, :viddy1, :video_id



 def get_content

  if self.typical == "tweet"
    response = HTTParty.get("https://api.twitter.com/1/statuses/oembed.json?id=#{self.viddy1.scan(/\d+/).join}")  
    @response = response['html']
   self.content = @response
 
 end
end




end
