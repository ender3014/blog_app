class User2 < ActiveRecord::Base
   attr_accessible :address, :longitude, :latitude, :gmaps
  acts_as_gmappable

def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
 # "#{self.street}, #{self.city}, #{self.country}" 
  address
end
end
