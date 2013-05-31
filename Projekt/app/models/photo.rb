class Photo < ActiveRecord::Base
  attr_accessible :description, :filename, :thumbnail
end
