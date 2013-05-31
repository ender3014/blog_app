class KontoController < ApplicationController
  def start
    redirect_to :action => "nowe" if !session[:user_id]
  end

  def nowe
     redirect_to :action => "start" if session[:user_id]
       if params["uzytkownik"]
         data = {
          "nazwa_uzytkownika" => params["uzytkownik"]["nazwa_uzytkownika"],
          "haslo" => params["uzytkownik"]["haslo"],
          "email" => params["uzytkownik"]["email"],
          "data_rejestracji" => DateTime.now.to_date
          }
    @save = Uzytkownik.new(data)
    @save.save
      end
  end

  def usun
  end

  def login
  end

  def logout
  end
end
