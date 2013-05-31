class User < ActiveRecord::Base
  attr_accessible :email, :password, :register_date, :username, :address
  validates :username, :presence => true, :length => { :minimum => 4, :maximum => 15 }
  validates :email, :format => { :with => /^[a-zA-Z0-9.\-_]+\@[a-zA-Z0-9.\-_]+\.[a-z]{2,4}$/ }
  validates :password, :length => { :minimum => 4 }
  
  acts_as_gmappable

def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
 # "#{self.street}, #{self.city}, #{self.country}" 
  address
end

end
