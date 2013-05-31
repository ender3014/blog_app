class AccountController < ApplicationController
  def start
    redirect_to :action => :new if !session[:user_id]
    @id = session[:user_id]
	
	if params[:search]
	@projects = User.find(:all, :conditions => ['username LIKE ?', "%#{params[:search]}%"])
	
	#else
	# @projects = User.find(:all)
	end
	
#lokalna = User2.find_by_id(session[:user_id])

	#if pomocnicza = User3.find_by_uz1(session[:user_id])
		#if pomocnicza1 = User2.find_by_id(pomocnicza.uz2)
		#end
	#end
	
	# Wyszukiwanie Znajomych	
	if params["Dodawanie"]
		if 	zmienna1 = User.find_by_id(session[:user_id])
			#@test = zmienna1.username
			if  zmienna2 = User.find_by_user_surname(params["Dodawanie"]["znajomy_nazwisko"])	
								
				#@test = zmienna2.username
				data3 = {
					"uz1" => zmienna1.id,
					"uz2" => zmienna2.id
						}	
					@save3 = User3.new(data3)
					if @save3.save
					render(:action=> 'search2')
					end
			else
				render(:action=> 'search')
					
					
			end
		end
	end
	
	#@users = User2.all
	#@json = User2.all.to_gmaps4rails
	
  end

  def new
  redirect_to :action => :start if session[:user_id]
  if params["Uzytkownik"]
    require 'digest/sha2'
    #password = Digest::SHA2.new << params["user"]["password"]
    data = {
          "username" => params["Uzytkownik"]["username"],
		  "user_surname" => params["Uzytkownik"]["user_surname"],
		  "login" => params["Uzytkownik"]["login"],
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
  redirect_to :action => :start if session[:user_id]
  if params["login"]
    if user = User.find_by_login(params["login"]["username"])
      password = params["login"]["password"]
       if password == user.password
       session[:user_id] = user.id
       redirect_to :action => :start
       end
      end
    end
  end

  def logout
     if session[:user_id]
                session[:user_id] = nil
                redirect_to :action => :new
        end
  end
end


 def add
  @osoba = params[:osoba]
  #<%=h wyswietl.username  %> <%=h wyswietl.user_surname  %>| <%= link_to "Dodaj", '/account/add' %>
    render :text => "OK"
end




