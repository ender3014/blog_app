class CreateUzytkowniks < ActiveRecord::Migration
  def change
    create_table :uzytkowniks do |t|
      t.string :nazwa_uzytkownika
      t.string :email
      t.date :data_rejestracji

      t.timestamps
    end
  end
end
