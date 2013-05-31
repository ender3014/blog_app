class Wspolrzedne < ActiveRecord::Base
	belongs to :user
  attr_accessible :gmaps, :latitude, :longitude, :address
   acts_as_gmappable
end

def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
 # "#{self.street}, #{self.city}, #{self.country}" 
  address
end


def gmaps4rails_infowindow
    "<h4>#{username}</h4>" << "<h4>#{address}</h4>"
  end
