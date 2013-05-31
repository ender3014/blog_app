class User < ActiveRecord::Base
  attr_accessible :username, :user_surname, :login, :email, :password, :register_date
  
end

def self.search(search)
  if search
    find(:all, :conditions => ['username LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

