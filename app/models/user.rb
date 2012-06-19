class User < ActiveRecord::Base
  make_flagger
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_one :profile
  has_many :vidvids
  has_many :videos
  
after_create do |user|
 user.create_profile   
end


def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token.extra.raw_info
    pic = access_token.info
  if user = User.where(:email => data.email).first
      user
  else # Create a user with a stub password.
      User.create!(:email => data.email, :password => Devise.friendly_token[0,20],
                   :name => data.name , :gender => data.gender, :pic => pic.image)
  end 
end







end
