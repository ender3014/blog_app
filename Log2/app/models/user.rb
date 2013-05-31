class User < ActiveRecord::Base
  has_many :user2
  attr_accessible :email, :password, :register_date, :username, :address
  validates :username, :presence => true, :length => { :minimum => 4, :maximum => 15 }
  validates :email, :format => { :with => /^[a-zA-Z0-9.\-_]+\@[a-zA-Z0-9.\-_]+\.[a-z]{2,4}$/ }
  validates :password, :length => { :minimum => 4 }
  
  




end
