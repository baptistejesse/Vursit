class Video < ActiveRecord::Base
  make_flaggable :vote
  has_one :vidvid
  belongs_to :user
  
  validates :viddy, :presence => true,   :format => { :with => /^http
    |^spotify/,
         :message => "Only links allowed" }

  validates :title, :presence => true, :length => { :maximum => 140}
  
  
  attr_accessible :title, :user_id, :viddy, :content



 def get_content
 @content = self.type
 @url = self.viddy
  if @content == "tweet"
  response = HTTParty.get("#{@url}")  
  self.content = response['html']
   
else
  response.code != 200
  ArgumentError.new("Uh..try again.")  
 
  end
end



end
