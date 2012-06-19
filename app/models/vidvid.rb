class Vidvid < ActiveRecord::Base
  make_flaggable :vote
  belongs_to :video
  belongs_to :user
  
  validates :viddy1, :presence => true, :format => { :with => /^http/,
         :message => "Only links allowed" }

  validates :title1, :presence => true, :length => { :maximum => 140}
  
  attr_accessible :title1, :user_id, :viddy1, :video_id
end
