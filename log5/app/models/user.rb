class User < ActiveRecord::Base
  attr_accessible :email, :password, :register_date, :username
  end
