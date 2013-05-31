class AccountController < ApplicationController
  def start
    redirect_to :action => "new" if !session[:user_id]
    @id = session[:user_id]
	lokalna = User2.find_by_id(session[:user_id])


	if pomocnicza = User3.find_by_uz1(session[:user_id])
		if pomocnicza1 = User2.find_by_id(pomocnicza.uz2)
		end
	end
	
	#@users = User2.all
	#@json = User2.all.to_gmaps4rails
	if ope = [lokalna, pomocnicza1]
	@users = ope
	@json = ope.to_gmaps4rails
	else
	@users = lokalna
	@json = lokalna.to_gmaps4rails
	end
		
	if params["Znajomi"]
		if 	zmienna1 = User.find_by_id(session[:user_id])
			#@test = zmienna1.username
			if  zmienna2 = User.find_by_username(params["Znajomi"]["znajomy"])	
								
				#@test = zmienna2.username
				data3 = {
					"uz1" => zmienna1.id,
					"uz2" => zmienna2.id
						}	
					@save3 = User3.new(data3)
					@save3.save
			end
		end
	end
	
	
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
		  
		  data2 = {
          "address" => params["Uzytkownik"]["address"],
            } 
	  
		  
		  
    @save = User.new(data)
	 @save2 = User2.new(data2)
       if @save.save
					if @save2.save
					session[:user_id] = @save.id
					redirect_to :action => "start"
					end
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
                redirect_to :action => "new"
        end
  end
end
