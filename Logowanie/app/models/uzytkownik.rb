class Uzytkownik < ActiveRecord::Base
  attr_accessible :data_rejestracji, :email, :nazwa_uzytkownika, :haslo
end
