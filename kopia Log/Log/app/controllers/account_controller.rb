class AccountController < ApplicationController
  def start
    redirect_to :action => "new" if !session[:user_id]
    @id = session[:user_id]
  end

  def new
  redirect_to :action => "start" if session[:user_id]
  if params["Uzytkownik"]
    require 'digest/sha2'
    #password = Digest::SHA2.new << params["user"]["password"]
    data = {
          "username" => params["Uzytkownik"]["username"],
          "password" => params["Uzytkownik"]["password"],
          "email" => params["Uzytkownik"]["email"],
          "register_date" => DateTime.now.to_date
          }
    @save = User.new(data)
       if @save.save
       session[:user_id] = @save.id
       redirect_to :action => "start"
       end
  end
end

  def remove
  end

  def login
  redirect_to :action => "start" if session[:user_id]
  if params["login"]
    if user = User.find_by_username(params["login"]["username"])
      password = params["login"]["password"]
       if password == user.password
       session[:user_id] = user.id
       redirect_to :action => "start"
       end
      end
    end
  end

  def logout
     if session[:user_id]
                session[:user_id] = nil
                redirect_to :action => "login"
        end
  end
end
