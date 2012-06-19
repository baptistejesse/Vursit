class Video < ActiveRecord::Base
  make_flaggable :vote
  has_one :vidvid
  belongs_to :user
  
  validates :viddy, :presence => true,   :format => { :with => /^http/,
         :message => "Only links allowed" }

  validates :title, :presence => true, :length => { :maximum => 140}
  
  
  attr_accessible :title, :user_id, :viddy
end
